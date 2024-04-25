#include "bmp_reader.h"

BMPReader::BMPReader() {
}

void BMPReader::WriteBMP(const std::string &filename, const Image &image) {
    std::fstream f;
    f.open(filename, std::ios::out | std::ios::binary);
    if (!f.is_open()) {
        throw std::runtime_error("Something wrong with file!");
    }

    char padding = static_cast<char>((4 - (3 * image.GetWidth()) % 4) % 4);  // NOLINT
    int filesize = static_cast<int>(FILE_HEADER_SIZE + INFO_HEADER_SIZE) +
                   static_cast<int>(padding) * image.GetHeight() + image.GetHeight() * image.GetWidth() * 3;  // NOLINT

    unsigned char bmi_padding[3] = {0, 0, 0};  // NOLINT
    unsigned char file_header[FILE_HEADER_SIZE] = {};
    file_header[0] = 'B';  // NOLINT
    file_header[1] = 'M';  // NOLINT

    file_header[2] = filesize;        // NOLINT
    file_header[3] = filesize >> 8;   // NOLINT
    file_header[4] = filesize >> 16;  // NOLINT
    file_header[5] = filesize >> 24;  // NOLINT

    file_header[10] = FILE_HEADER_SIZE + INFO_HEADER_SIZE;  // NOLINT

    unsigned char info_header[INFO_HEADER_SIZE] = {};
    info_header[0] = INFO_HEADER_SIZE;  // NOLINT

    info_header[4] = image.GetWidth();        // NOLINT
    info_header[5] = image.GetWidth() >> 8;   // NOLINT
    info_header[6] = image.GetWidth() >> 16;  // NOLINT
    info_header[7] = image.GetWidth() >> 24;  // NOLINT

    info_header[8] = image.GetHeight();         // NOLINT
    info_header[9] = image.GetHeight() >> 8;    // NOLINT
    info_header[10] = image.GetHeight() >> 16;  // NOLINT
    info_header[11] = image.GetHeight() >> 24;  // NOLINT

    info_header[12] = 1;   // NOLINT
    info_header[14] = 24;  // NOLINT

    f.write(reinterpret_cast<char *>(file_header), FILE_HEADER_SIZE);
    f.write(reinterpret_cast<char *>(info_header), INFO_HEADER_SIZE);

    for (int i = 0; i < image.GetHeight(); i++) {
        for (int j = 0; j < image.GetWidth(); j++) {
            unsigned char pixl[] = {static_cast<unsigned char>(std::round(image.GetPixel(j, i).b * 255.0)),   // NOLINT
                                    static_cast<unsigned char>(std::round(image.GetPixel(j, i).g * 255.0)),   // NOLINT
                                    static_cast<unsigned char>(std::round(image.GetPixel(j, i).r * 255.0))};  // NOLINT
            f.write(reinterpret_cast<char *>(pixl), 3);                                                       // NOLINT
        }
        f.write(reinterpret_cast<char *>(bmi_padding), padding);
    }
    f.close();
}

Image BMPReader::ReadBMP(const std::string &filename, Image &image) {
    std::fstream f;
    f.open(filename, std::ios::in | std::ios::binary);

    if (!f.is_open()) {
        throw std::runtime_error("Something wrong with file!");
    }

    unsigned char bmi_padding[3] = {0, 0, 0};
    unsigned char file_header[FILE_HEADER_SIZE] = {};
    f.read(reinterpret_cast<char *>(file_header), FILE_HEADER_SIZE);

    unsigned char info_header[INFO_HEADER_SIZE] = {};
    f.read(reinterpret_cast<char *>(info_header), INFO_HEADER_SIZE);

    int width = static_cast<int>(info_header[4]) + (static_cast<int>(info_header[5]) << 8) +   // NOLINT
                (static_cast<int>(info_header[6]) << 16) +                                     // NOLINT
                (static_cast<int>(info_header[7]) << 24);                                      // NOLINT
    int height = static_cast<int>(info_header[8]) + (static_cast<int>(info_header[9]) << 8) +  // NOLINT
                 (static_cast<int>(info_header[10]) << 16) +                                   // NOLINT
                 (static_cast<int>(info_header[11]) << 24);                                    // NOLINT

    image = Image(width, height);

    char padding = static_cast<char>((4 - (3 * image.GetWidth()) % 4) % 4);  // NOLINT

    for (int i = 0; i < image.GetHeight(); ++i) {
        for (int j = 0; j < image.GetWidth(); ++j) {
            unsigned char pixel[3];
            f.read(reinterpret_cast<char *>(pixel), 3);  // NOLINT
            image.SetPixel(
                Pixel(static_cast<double>(pixel[2]) / 255.0, static_cast<double>(pixel[1]) / 255.0,  // NOLINT
                      static_cast<double>(pixel[0]) / 255.0),                                        // NOLINT
                j, i);
        }
        f.read(reinterpret_cast<char *>(bmi_padding), padding);
    }
    f.close();
    return image;
}