#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int add2_c(int, int);
int add2_s(int, int);

void look_at_code(uint32_t *code) {
    uint32_t add_instr = *code;
    printf("add_instr: 0x%x\n", add_instr);
}

int main(int argc, char **argv) {
    int a = atoi(argv[1]);
    int b = atoi(argv[2]);

    int sum = add2_c(a, b);
    printf("C: %d\n", sum);

    sum = add2_s(a, b);
    printf("Asm: %d\n", sum);

    look_at_code((uint32_t*)add2_s);
}
