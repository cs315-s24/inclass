#include <stdio.h>

int add1_c(int);
int add1_s(int, int, int);

int main(int argc, char **argv) {
    int sum = add1_c(42);
    printf("C: %d\n", sum);

    sum = add1_s(42, 87, 92);
    printf("Asm: %d\n", sum);

    return 0;
}
