#include "fibonacci.h"

const int64_t FIB_AMOUNT_CALCULATED = 2;

int64_t CalculateNthFibonacci(int64_t n) {
    if (n == 0) {
        return 0;
    }
    int64_t f_n = 1;
    int64_t f_n_1 = 1;
    for (int64_t i = 0; i < n - FIB_AMOUNT_CALCULATED; ++i) {
        int64_t f_n_2 = f_n_1 + f_n;
        f_n = f_n_1;
        f_n_1 = f_n_2;
    }
    return f_n_1;
}
