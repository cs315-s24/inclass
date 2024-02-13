int fact_c(int n) {

    // base case
    if (n <= 1)
        return 1;

    // recursive
    return n * fact_c(n - 1);
}
