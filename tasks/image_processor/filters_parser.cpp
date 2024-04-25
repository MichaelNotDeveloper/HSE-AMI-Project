#include "filters_parser.h"

FiltersParser::FiltersParser(int length, char** input) {
    if (length < 2) {
        throw std::runtime_error("No input file!\n");
    } else {
        input_file = input[1];
        if (input_file.substr(input_file.size() - FILETYPE.size(), FILETYPE.size()) != FILETYPE) {
            throw std::runtime_error("Wrong input type!");
        }
    }
    if (length < 3) {
        throw std::runtime_error("No output file!\n");
    } else {
        output_file = input[2];
        if (output_file.substr(output_file.size() - FILETYPE.size(), FILETYPE.size()) != FILETYPE) {
            throw std::runtime_error("Wrong input type!\n");
        }
    }
    for (size_t i = 3; i < length; ++i) {
        if (input[i][0] == '-') {
            std::string name = input[i];
            names.push_back(name.substr(1, name.size() - 1));
            params.push_back(std::vector<std::string>());
            list_amount++;
        } else {
            std::string param = input[i];
            if (TypeChecker(param) == NULL_PARAM) {
                throw std::runtime_error("Wrong parameter type!\n");
            }
            params[list_amount - 1].push_back(param);
        }
    }
}
int FiltersParser::TypeChecker(const std::string& param) {
    int type = NUM_PARAM;
    for (const auto& u : param) {
        if (!std::isdigit(u) and u != '.') {
            type = NULL_PARAM;
            break;
        }
    }
    return type;
}
size_t FiltersParser::Size() const {
    return list_amount;
}
