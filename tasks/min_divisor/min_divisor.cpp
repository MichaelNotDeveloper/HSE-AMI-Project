#include "min_divisor.h"

const int64_t SMALLEST_DIV = 2;

int64_t MinDivisor(int64_t number) {
    for (int64_t possible_div = SMALLEST_DIV; possible_div <= number / possible_div; ++possible_div) {
        if (number % possible_div == 0) {
            return possible_div;
        }
    }
    return number;
}
