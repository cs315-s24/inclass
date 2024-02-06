#include <stdio.h>

#define LEN 4

void add1_c(int *p, int len);
void add1_s(int *p, int len);

void print_arr(int *p, int len) {
    for (int i = 0; i < len; i++) {
        printf("%d ", p[i]);
    }
    printf("\n");
}

int main(int argc, char **argv) {
    int arr[LEN] = {1, 2, 3, 4};

    add1_c(arr, LEN);
    print_arr(arr, LEN);

    int arr2[LEN] = {1, 2, 3, 4};
    add1_s(arr2, LEN);
    print_arr(arr, LEN);
    
    return 0;
}
