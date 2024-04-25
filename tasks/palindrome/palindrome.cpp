#include "palindrome.h"

bool IsPalindrome(const std::string& str) {
    int left_border = 0;
    int right_border = static_cast<int>(str.length()) - 1;
    while (left_border <= right_border) {
        if (str[left_border] == ' ' || str[right_border] == ' ') {
            left_border += str[left_border] == ' ';
            right_border -= str[right_border] == ' ';
            continue;
        }
        if (str[left_border] != str[right_border]) {
            return false;
        }
        left_border += 1;
        right_border -= 1;
    }
    return true;
}
