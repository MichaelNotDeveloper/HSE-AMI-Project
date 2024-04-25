#include "reduce_fraction.h"

int64_t Gcd(int64_t a, int64_t b) {
    while (b) {
        a %= b;
        int64_t c = a;
        a = b;
        b = c;
    }
    return a;
}

int64_t ReduceFraction(int64_t numerator, int64_t denominator) {
    int64_t same_dividor = Gcd(numerator, denominator);
    numerator /= same_dividor;
    denominator /= same_dividor;
    return numerator + denominator;
}
