#pragma once

#include <vector>
#include <string>
#include <iostream>

const std::string FILETYPE = ".bmp";
const int NULL_PARAM = 0;
const int NUM_PARAM = 1;

struct FiltersParser {
    size_t list_amount;
    std::vector<std::string> names;
    std::vector<std::vector<std::string> > params;
    std::string input_file;
    std::string output_file;
    FiltersParser(int length, char** input);
    int TypeChecker(const std::string& param);
    size_t Size() const;
};