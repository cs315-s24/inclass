void add1_c(int *arr, int len) {
    for (int i = 0; i < len; i++) {
        //arr[i] = arr[i] + 1;

        int j = arr[i];
        j++;
        arr[i] = j;
    }
    // arr not used
}
