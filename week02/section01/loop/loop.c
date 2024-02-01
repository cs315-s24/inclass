#include <stdio.h>
#include <stdlib.h>

int loop_c(int);
int loop_s(int);

int main(int argc, char **argv) {
    int i = atoi(argv[1]);

    int c = loop_c(i);
    printf("C: %d\n", c);

    c = loop_s(i);
    printf("Asm: %d\n", c);

    return 0;
}
