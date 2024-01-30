#include <stdio.h>

int add1_c(int);
int add1_s(int);

int main(int argc, char **argv) {
    int i = add1_c(2);
    printf("C: %d\n", i);

    i = add1_s(2);
    printf("Asm: %d\n", i);

    return 0;
}
