.ORG 0X0000

; carrego o Buffer no registrador de uso geral R16 a ser passado para o barramento que o definirá como OUTPUT
LDI R16, 0B11111111 
; transfiro o valor armazenado no buffer que de fato definirá o barramento como saída.
OUT DDRD, R16

; carrego o buffer no msm registrador que definirá o bit de maior valor como 1;
LDI R16, 0B00000001
; transfiro o buffer para a porta, setando o pino 1 como saída
OUT PORTD, R16

; pulo para o loop 
RJMP LOOP

LOOP:
    ;loop infinito
    RJMP LOOP