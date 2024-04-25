#include "password.h"

const char LOWER_CHARACTER_BORDER = 33;
const char UPPER_CHARACTER_BORDER = 126;

const char LOWER_LENGTH_BORDER = 8;
const char UPPER_LENGTH_BORDER = 14;

bool ValidatePassword(const std::string& password) {

    bool char_range_is_bad = false;
    bool numbers = false;
    bool big_letters = false;
    bool small_letters = false;
    bool other_letters = false;

    if (password.length() < LOWER_LENGTH_BORDER || UPPER_LENGTH_BORDER < password.length()) {
        return false;
    }
    for (char u : password) {
        if (u < LOWER_CHARACTER_BORDER || UPPER_CHARACTER_BORDER < u) {
            char_range_is_bad = true;
        } else if (isdigit(u)) {
            numbers = true;
        } else if (isupper(u)) {
            big_letters = true;
        } else if (islower(u)) {
            small_letters = true;
        } else {
            other_letters = true;
        }
    }
    int rules_cntr = numbers + big_letters + small_letters + other_letters;
    if (!char_range_is_bad && rules_cntr >= 3) {
        return true;
    } else {
        return false;
    }
}
