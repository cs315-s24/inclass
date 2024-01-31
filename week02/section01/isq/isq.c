#include <stdio.h>
#include <stdbool.h>

bool isq_c(char);
bool isq_s(char);

int main(int argc, char **argv) {
    char ch = 'p';

    bool isq = isq_c(ch);
    printf("C: %d\n", isq);

    isq = isq_s(ch);
    printf("Asm: %d\n", isq);
}
