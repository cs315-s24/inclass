#include <stdio.h>
#include <stdbool.h>

bool eq3_c(int);
bool eq3_s(int);

int main(int argc, char **argv) {
    int i = 2;
    bool eq = eq3_c(i);
    printf("C: %d\n", eq);

    eq = eq3_s(i);
    printf("Asm: %d\n", eq);

    return 0;
}
