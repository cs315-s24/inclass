#include <stdio.h>
#include <stdlib.h>

int loop_c(int);
int loop_s(int);

int main(int argc, char **argv) {
    int n = atoi(argv[1]);

    int count = loop_c(n);
    printf("C: %d\n", count);

    count = loop_s(n);
    printf("Asm: %d\n", count);
    
    return 0;
}
