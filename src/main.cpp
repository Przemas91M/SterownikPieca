#include <Arduino.h>
#include <Wire.h>
#include <LiquidCrystal_I2C.h>
#include <OneWire.h>
#include <EEPROM.h>

#define relayPin 7  //D7
#define sensorPin 8 //D8
#define swPin 4     //D4
#define dtPin 2     //D2
#define clkPin 3    //D3

LiquidCrystal_I2C lcd(0x27, 16, 2);
OneWire ds(sensorPin);

byte data[12];
byte addr[8];
volatile int counter = 0;
bool aState, aLastState, swState, swState_old, reading;
float offTemp, warnTemp, offTemp_set, warnTemp_set, celsius;
int address = 0, menu = 0;
unsigned long now, waitRead, menuTimer;

//symbol termometru
byte termo[] =
    {
        B00100,
        B01010,
        B01010,
        B01010,
        B01110,
        B11111,
        B11111,
        B01110};

//symbol stopni
byte grade[] =
    {
        B11100,
        B10100,
        B11100,
        B00000,
        B00000,
        B00000,
        B00000,
        B00000};

//wyszukuje czujnik temperatury po adresach OneWire
void findSensor()
{
  ds.reset_search();
  while (!ds.search(addr))
  {
    //Serial.println("No more addresses.");
    //Serial.println();
    lcd.clear();
    lcd.setCursor(0, 0);
    lcd.print("Blad");
    lcd.setCursor(0, 1);
    lcd.print("czujnika");
    ds.reset_search();
    delay(250);
  }
  lcd.clear();
  lcd.setCursor(4, 0);
  lcd.print("Czujnik");
  lcd.setCursor(7, 1);
  lcd.print("OK");
  delay(2000);
}

//czyści wybraną linię w wyświetlaczu
void clearLine(int line)
{
  lcd.setCursor(0, line);
  for (int i = 0; i < 16; i++)
  {
    lcd.print(" ");
  }
}

//odczyt enkodera podczas przerwania i interpretacja kierunku obrotu
void readEncoder()
{
  aState = digitalRead(clkPin); // Reads the "current" state of the outputA
  // If the previous and the current state of the outputA are different, that means a Pulse has occured
  if (aState != aLastState)
  {
    // If the outputB state is different to the outputA state, that means the encoder is rotating clockwise
    if (digitalRead(dtPin) != aState)
    {
      counter++;
    }
    else
    {
      counter--;
    }
    //Serial.print("Position: ");
    //Serial.println(counter);
  }
  aLastState = aState; // Updates the previous state of the outputA with the current state
}

//zapisuje nowa wartosc temperatury wylaczenia pompy do pamieci
void updateOffTemp(float temp)
{
  if (temp != offTemp)
  {
    EEPROM.put(0, temp);
  }
}

//zapisuje nowa wartosc temperatury ostrzegania do pamieci
void updateWarnTemp(float temp)
{
  int addres = 0;
  addres += sizeof(float);
  if (temp != warnTemp)
  {
    EEPROM.put(addres, temp);
  }
}

void readTemperature()
{
  if (!reading)
  {
    ds.reset();
    ds.select(addr);
    ds.write(0x44, 1); // start conversion, with parasite power on at the end
    reading = true;
    waitRead = now;
    return;
  }

  if ((now - waitRead) > 1000)
  {
    // we might do a ds.depower() here, but the reset will take care of it.
    ds.reset();
    ds.select(addr);
    ds.write(0xBE); // Read Scratchpad
    for (byte i = 0; i < 9; i++)
    { // we need 9 bytes
      data[i] = ds.read();
    }
    // Convert the data to actual temperature
    // because the result is a 16 bit signed integer, it should
    // be stored to an "int16_t" type, which is always 16 bits
    // even when compiled on a 32 bit processor.
    int16_t raw = (data[1] << 8) | data[0];
    celsius = (float)raw / 16.0;
    reading = false;
  }
}

void setup()
{
  // put your setup code here, to run once:
  pinMode(dtPin, INPUT);
  pinMode(clkPin, INPUT);
  pinMode(swPin, INPUT);
  attachInterrupt(dtPin, readEncoder, CHANGE);
  attachInterrupt(clkPin, readEncoder, CHANGE);
  EEPROM.get(address, offTemp);
  address += sizeof(short);
  EEPROM.get(address, warnTemp);
  lcd.init();
  lcd.begin(16, 2);
  lcd.createChar(0, termo);
  lcd.createChar(1, grade);
  lcd.backlight();
  lcd.setCursor(4, 0);
  lcd.print("Hello");
  delay(2000);
  findSensor();
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print(offTemp);
  lcd.setCursor(0, 1);
  lcd.print(warnTemp);
  delay(2000);
  lcd.clear();
  lcd.print("Temperatura:");
  //tylko w przypadku nowej płytki!!
  //EEPROM.put(address, offTemp);
  //address += sizeof(short);
  //EEPROM.put(address, warnTemp);
  Serial.begin(9600);
}

void loop(void)
{
  now = millis();
  swState = digitalRead(swPin); //odczyt stanu przycisku
  if (swState != swState_old)   //sprawdzam wcisniecie przycisku (pominie, jezeli przycisk jest juz wcisniety)
  {
    swState_old = swState; //zapisuje wcisniecie, zeby non stop nie wykonywalo rozkazu
    if (swState)           //wywola sie w przypadku wcisniecia przycisku
    {
      menu++;
      menuTimer = now;
    }
  }
  readTemperature();
  //jezeli zostal przekrecony potencjometr
  if (menu == 0) //jestesmy w trybie wyswietlania temperatury
  {
    lcd.setCursor(0, 1);
    lcd.write(0);
    lcd.setCursor(3, 1);
    lcd.print(celsius);
    lcd.write(1);
    lcd.print("C");
    counter = 0;     //nic nie robimy, czekamy na wcisniecie przycisku
    lcd.backlight(); //odpalam podswietlenie
  }
  else if (menu == 1) //ustawienia temperatury wylaczenia
  {
    offTemp += (float)(counter * 0.5);
    lcd.setCursor(0, 0);
    lcd.print("Temp off:");
    lcd.setCursor(0, 1);
    lcd.print(offTemp);
    counter = 0;
  }
  else if (menu == 2)
  {
    warnTemp += (float)(counter * 0.5);
    lcd.setCursor(0, 0);
    lcd.print("Temp warn:");
    lcd.setCursor(0, 1);
    lcd.print(warnTemp);
    counter = 0;
  }
  else if(menu > 2)
  {
      updateWarnTemp(warnTemp);
      updateOffTemp(offTemp);
      menu = 0;
  }
Serial.println(menu);
Serial.println(swState);
delay(250);
  //Serial.print("  Temperature = ");
  //Serial.print(celsius);
  //Serial.print(" Celsius, ");
  //clearLine(1);
}