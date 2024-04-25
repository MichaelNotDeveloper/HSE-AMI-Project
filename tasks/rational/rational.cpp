#include <numeric>
#include <cstdint>

class Rational {
public:
    Rational() {
        Set(0, 1);
    }

    Rational(int value) {
        Set(value, 0);
    }

    Rational(int numer, int denom) {
        Set(numer, denom);
    }

    int GetNumerator() const {
        return numer_;
    }

    int GetDenominator() const {
        return denom_;
    }

    void SetNumerator(int value) {
        Set(value, denom_);
    }

    void SetDenominator(int value) {
        Set(numer_, value);
    }

    friend Rational& operator+=(Rational& lhs, const Rational& rhs) {
        Rational new_rat(static_cast<int64_t>(lhs.numer_) * static_cast<int64_t>(rhs.denom_) + 
        static_cast<int64_t>(rhs.numer_) * static_cast<int64_t>(lhs.denom_),
        static_cast<int64_t>(rhs.denom_) * static_cast<int64_t>(lhs.denom_));
        return new_rat;
    }

    friend Rational& operator*=(Rational& lhs, const Rational& rhs) {
        Rational new_rat(static_cast<int64_t>(lhs.numer_) *  static_cast<int64_t>(rhs.numer_),
        static_cast<int64_t>(rhs.denom_) * static_cast<int64_t>(lhs.denom_));
        return new_rat;
    }

    friend Rational& operator++(Rational& ratio) {
        Rational new_rat(ratio.numer_ + ratio.denom_, ratio.denom_);
        return new_rat;
    } 

    friend Rational& operator--(Rational& ratio) {
        Rational new_rat(ratio.numer_ + ratio.denom_, ratio.denom_);
        return new_rat
    }

    friend std::istream& operator>>(std::istream& is, Rational& ratio);

private:
    void Set(int64_t numer, int64_t denom) {
        int dividor = std::gcd(numer, denom);
        numer_ = numer / dividor;
        denom_ = denom / dividor;
    };

    int numer_;
    int denom_;

};