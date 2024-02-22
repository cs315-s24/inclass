#include <stdio.h>
#include <stdint.h>

int64_t extend_s(uint32_t);

int main(int argc, char **argv) {
    uint32_t n = 0xAAAA0000;
    int64_t extended = extend_s(n);
    printf("%lx", extended);
}
