.ORG 0X00000000

    ;Definindo o barramento C como INPUT
    LDI R16, 0B00000000
    OUT DDRC, R16
    
    ;Ativando resistor de pullup em todos pinos
    LDI R16, 0B11111111
    OUT PORTC, R16

    ;Definindo o barramento D como saída
    LDI R20, 0B11111111
    OUT DDRD, R20

    ;Definindo todos pinos com sinal LOW
    LDI R20, 0B00000000
    OUT PORTD, R20



    LOOP:
    ;Pule a proxima linha caso o PINC 2 esteja em high;
    SBIC PINC, 2
    RJMP LEDOFF
    RJMP LED_ON

        LED_ON: 
            SBI PORTD, 7
            RJMP LOOP
        LED_OFF:
            CBI PORTD, 7
            RJMP LOOP
