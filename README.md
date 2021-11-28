# Sterownik pompy pieca CO
Prosty sterownik pompy obiegowej pieca CO w oparciu o mikrokontroler ATmega328P-AU.  
Sterownik składa się z:
- czujnika temperatury DS18B20,
- wyświetlacza LCD 2x18,
- enkodera obrotowego dla zadawania nastaw temperatury,
- 2x przekaźniki do załączania pompy i buzzera ostrzegawczego.    
Sterownik załącza pompę, gdy temperatura wody w piecu osiągnie 30 st C.  
Powyżej 70 st C załącza się buzzer ostrzegawczy, aby nie zagotować wody w obiegu grzewczym.  
Gdy temperatura spadnie poniżej 30 st C, pompa jest wyłączana.  
