.ORG 0X0000000

    LDI R16, 0B11111111
    OUT DDRD, R16

    LDI R16, 0B11111111
    OUT PORTD, R16

    CBI PORTD, 7

    RJMP LOOP

    LOOP:
        RJMP LOOP