#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

int even_c(int);
int even_s(int);

int main(int argc, char **argv) {
    long n = atoi(argv[1]);

    bool is_even = even_c(n);
    printf("C: %d\n", is_even);

    is_even = even_s(n);
    printf("Asm: %d\n", is_even);

    return 0;
}
