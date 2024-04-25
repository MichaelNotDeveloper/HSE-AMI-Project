#pragma once

#include "image.h"
#include <fstream>
#include <cmath>

const unsigned char FILE_HEADER_SIZE = 14;
const unsigned char INFO_HEADER_SIZE = 40;

class BMPReader {
public:
    BMPReader();
    Image ReadBMP(const std::string& filename, Image& image);
    void WriteBMP(const std::string& filename, const Image& image);

private:
};