/* findc_c walks str
   if ch occurs in str, return the index
   if not, return -1;
*/
int findc_c(char *str, char ch) {
    int index = 0;
    while (*str) {
        if (ch == *str) {
            break;
        } else {
            index++;
            str++;
        }
    }

    if (!*str) {
        // we've found the NULL, so no index
        index = -1;
    }

    return index;
}

/* countc_c counts occurrences of ch in str
   by calling findc_c in a loop
*/
int countc_c(char *str, char ch) {
    int count = 0;
    while (*str) {
        int index = findc_c(str, ch);
        if (index == -1) {
            break;
        } else {
            str += index + 1;
            count++;
        }
    }
    return count;
}
