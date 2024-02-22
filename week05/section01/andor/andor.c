#include <stdio.h>
#include <stdint.h>

uint32_t andor_c(int, int);
uint32_t andor_s(int, int);

int main(int argc, char **argv) {
    int a = 0b1010101;
    int b = 0b1010100;

    uint32_t result = andor_c(a, b);
    printf("%d\n", result);

    result = andor_s(a, b);
    printf("%d\n", result);

    return 0;
}
