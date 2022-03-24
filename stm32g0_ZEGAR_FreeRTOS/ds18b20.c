/*****************************************
File  : ds18b20.c
Autor : strefapic.blogspot.com
MCU   : STM32G071KBT6
IDE   : SEGGER Embedded Studio
******************************************/


//#include <avr/sfr_defs.h>	// biblioteka do funkcji typu bit_is_clear / bit_is_set
#include <stdlib.h>
#include "ds18b20.h"



int DStemp ; //*************poaczenie LSB + MSB w jedn zmienn
int DStemp_Znak ; //*************tutaj badamy znak temperatury
int DStemp_Calkowita ; //*************wydobywamy cz cakowit z DStemp
int DStemp_Ulamek ; //*************wydobywamy cz uamkow (po przecinku) z DStemp

// zmienna WE jako parametr wywwoania funkcji okresla numer czujnika do ktrego odnosimy dziaania
//************************************************************
	/*						//DEFINICJE  FUNKCJI
unsigned char RESET_PULSE(int WE)			// resetujemy magistral , czekamy na impuls PRESENCE
{
	unsigned char PRESENCE ;
	CLEAR_1Wire ;				// ustawienie magistrali na poziom niski
	_delay_us(500);				// z biblioteki avr/util opnienie 500 us
	SET_1Wire ;				// ustawienie magistrali na poziom wysoki
	_delay_us(30);				// oczekiwanie na ustawienie linii w stan niski przez DS18b20
	// sprawdzamy poziom linii (czy w stanie niskim)
	if (bit_is_clear(PORT_1Wire,WE)) {PRESENCE = 1;} else {PRESENCE = 0 ;}
	// 1 - odebrano bit PRESENCE , 0 - stan nieaktywnsci
	_delay_us(470);				// odczekanie przez mastera 470 us i sprawdzenie czy DS18b20 podcign magistral
	// sprawdzamy poziom linii (czy ustawiona)
	if (bit_is_set(PORT_1Wire,WE)) {PRESENCE = 1;} else {PRESENCE = 0 ;}

	return PRESENCE	 ; // zwracamy wartos do funkcji
}
			// koniec funkcji RESET_PULSE
//************************************************************


unsigned char read_byte(int WE)	// odczytuje bajt z magistrali
	{
		unsigned char i ;	// zmienna licznikowa
		unsigned char wartosc = 0 ;	// wczytywana wartos
	for (i=0 ; i<8 ; i++)		// ptla wykonywana 8 razy
	{
		if (read(WE)) wartosc|= 0x01 << i ;	// zczytywanie po jednym bicie
		_delay_us(15);			// odczekanie 15us

	}

return(wartosc) ;	// zwrot wartosci do funkcji

	}
			// koniec funkcji read_byte
//************************************************************

	unsigned char read(int WE)	// odczytuje bit z magistrali

	{
		unsigned char PRESENCE = 0 ;
		CLEAR_1Wire ;	// ustawienie magistrali w stan niski
		_delay_us(2);	// odczekanie 2 us
		SET_1Wire ;		// zwolnienie magistrali
		_delay_us(15);	// odczekanie 15 us
		// odbir jedynki lub zera
		if(bit_is_set(PORT_1Wire,WE)) PRESENCE = 1 ; else PRESENCE = 0 ;
		 return(PRESENCE) ;
	}

	// koniec funkcji read
	//************************************************************

	void send(char bit)	// wysya bit
	{
		CLEAR_1Wire ;	// ustawienie magistrali w stan niski
		_delay_us(5);
		if(bit == 1)
			SET_1Wire ;	// zwolnienie magistrali - wysanie jedynki
		_delay_us(80);	// przetrzymanie wysanie zera
			SET_1Wire ;
	}

	// koniec funkcji send
	//************************************************************



	void send_byte(char wartosc) // wysya cay bajt do ukadu
{
	unsigned char i ; 		// zmienna licznikowa
	unsigned char pom ; 	// zmienna pomocnicza

	for(i=0 ; i<8 ;  i++)
	{
		pom = wartosc >> i ;	// przesuniecie bitowe w prawo
		pom &= 0x01 ;			// skopiowanie bitu do zmiennej w prawo
		send(pom) ;				// wysanie bitu na magistrale

	}
	_delay_us(100);	// odczekanie 100 us
}
// koniec funkcji send_byte
//************************************************************


void temperatura(int WE)	// gwna funkcja wyliczajca temperatur, jako parametr podajemy numer czujnika WE1...WE2 ...
	{
 	// deklaracja zmiennych lokalnych
	unsigned char sprawdz ;
	char temp1 = 0, temp2 = 0 ;


// ptla gwna programu programu


	sprawdz = RESET_PULSE(WE) ;	// impuls resetu
	if (sprawdz == 1) // czy czujnik zgasza gotowo do dziaania
	{

//*****************************************START ODCZYTU TEMPERATURY********************************************************
		CLEAR_zasilanie_parasite ;  // Parasite
		SET_1Wire ; 				// Parasite

		RESET_PULSE(WE) ; // wysanie impulsu reset
		send_byte(0xCC) ;	// skip ROM
		send_byte(0xBE) ;	// READ SCRATCHPAD

		temp1 = read_byte(WE) ;	// odczytanie LSB
		temp2 = read_byte(WE) ;	// odczytanie MSB

		RESET_PULSE(WE) ;	// zwolnienie magistrali

		DStemp = (temp2<<8) | temp1 ; //*************aczymy starszy bajt i modszy w jeden kawaek
		DStemp_Znak = temp2 >> 7 ; //*************wydobywamy info o znaku temperatury
		if (DStemp_Znak) {
			DStemp = ~DStemp + 1; // wycigamy warto bezwgldn z liczby ujemnej w kodzie U2
		}
		DStemp_Calkowita = (int) ((DStemp >> 4) & 0x7F); //*************przesuwamy o 4 bity i maskujemy
		DStemp_Ulamek = (int) (((DStemp & 0xF) * 625) / 1000); //*************jedna cyfra po przecinku, jesli chcemy 2 cyfry do dzielimy przez 100


//****************************************START KONWERSJI*****************************************************
		// konwersj robimy na kocu w/g schematu : odczyt temp - konwersja - tyknicie Timera2 programowego co 750 ms
		//gdybymy dali na pocztku przed odczytem to odczyt byby 85 czyli w trakcie konwersji

		send_byte(0xCC) ;			// skip ROM
		send_byte(0x44) ;			// CONVERT T

		SET_zasilanie_parasite ;	// Parasite
		CLEAR_1Wire ;				// Parasit

}


	}

        
// #define READ_BIT(REG, BIT)    ((REG) & (BIT))  //STM32

/** \def bit_is_set
    \ingroup avr_sfr
    \code #include <avr/io.h>\endcode
    Test whether bit \c bit in IO register \c sfr is set. 
    This will return a 0 if the bit is clear, and non-zero
    if the bit is set. */

// #define bit_is_set(sfr, bit) (_SFR_BYTE(sfr) & _BV(bit))

/** \def bit_is_clear
    \ingroup avr_sfr
    \code #include <avr/io.h>\endcode
    Test whether bit \c bit in IO register \c sfr is clear. 
    This will return non-zero if the bit is clear, and a 0
    if the bit is set. */

// #define bit_is_clear(sfr, bit) (!(_SFR_BYTE(sfr) & _BV(bit)))

