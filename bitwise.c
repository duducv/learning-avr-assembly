#include <stdio.h>

int main() {
// ( |= ) Ativando o ultimo bit 0b00000000 -> 0b10000000
    int byte1 = 0b00000000;
    byte1 |= (1 << 7);

// ( &= ) Apagando o ultimo bit 0b10000000 -> 0b00000000
    int byte2 = 0b10000000;
    byte2 &= ~(1 << 7);

    return 1;



}