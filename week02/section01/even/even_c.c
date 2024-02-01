#include <stdbool.h>

bool even_c(long n) {
    if ((n & 1) == 0)
        return true;
    return false;
    
    // return !(n & 1);
}
