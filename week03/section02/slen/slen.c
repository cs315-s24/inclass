#include <stdio.h>

int slen_c(char*);
int slen_s(char*);

int main(int argc, char **argv) {
    int len = slen_c(argv[1]);
    printf("C: %d\n", len);

    len = slen_s(argv[1]);
    printf("Asm: %d\n", len);

    return 0;
}
