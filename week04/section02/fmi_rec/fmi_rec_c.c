int fmi_rec_c(int *arr, int len, int idx, int max_idx) {
    int max_new = max_idx;

    // base case, cond branch to done?
    if (idx >= len) {
        return max_idx;
    }

    /*
        calc offset of idx'th elem and max'th elem
        load the into regs so we can compare
        new max, cond branch to skip over it
    */
    if (arr[idx] > arr[max_idx]) {
        max_new = idx;
    }

    /*
        set up func args for recursion: a2+1
        calling a function, save ra
        nothing to do when recursion returns, a0 already ret val
    */
    return fmi_rec_c(arr, len, idx + 1, max_new);
}
