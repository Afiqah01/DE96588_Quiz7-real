#include<p18f4550.inc>
			org	0x00
			goto start
			org	0x08
			retfie
			org	0x18
			retfie



start		CLRF	TRISD, A
			SETF	TRISB, A
			CLRF	PORTD, A

CHECK		BTFSS	PORTB, 0, A
			BRA		Onled1
			BCF		PORTD, 0, A
CHECK1		BTFSS	PORTB, 1, A
			BRA		Onled2
			BCF		PORTD, 1, A
			BRA		CHECK
			
Onled1		BSF		PORTD, 0, A
			BRA		CHECK
			
Onled2		BSF		PORTD, 1, A
			BRA		CHECK1
			
			END