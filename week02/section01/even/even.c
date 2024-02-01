#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

bool even_c(long);
bool even_s(long);

int main(int argc, char **argv) {
    long n = atoi(argv[1]);

    bool is_even = even_c(n);
    printf("C: %d\n", is_even);

    is_even = even_s(n);
    printf("Asm: %d\n", is_even);
    
    return 0;
}
