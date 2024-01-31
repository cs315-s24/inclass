#include <stdio.h>
#include <stdlib.h>

int sub2_c(int, int);
int sub2_s(int, int);

int main(int argc, char **argv) {
    int a = atoi(argv[1]);
    int b = atoi(argv[2]);

    int diff = sub2_c(a, b);
    printf("C: %d\n", diff);

    diff = sub2_s(a, b);
    printf("Asm: %d\n", diff);

    return 0;
}
