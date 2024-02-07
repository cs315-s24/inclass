int add2_c(int a, int b) {
    return a + b;
}

int add3_c(int a, int b, int c) {
    int first2 = add2_c(a, b);
    int sum = add2_c(first2, c);
    return sum;
}
