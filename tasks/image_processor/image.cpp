#include "image.h"

Pixel::Pixel() : r(0), g(0), b(0) {
}

Pixel::Pixel(double tone) : r(tone), g(tone), b(tone) {
}

Pixel::Pixel(double r, double g, double b) : r(r), g(g), b(b) {
}

void Pixel::CutLimits() {
    r = std::max(std::min(r, 1.0), 0.0);
    g = std::max(std::min(g, 1.0), 0.0);
    b = std::max(std::min(b, 1.0), 0.0);
}

Image::Image() : width_(0), height_(0) {
}

Image::Image(int width, int height) : width_(width), height_(height), pixels_(std::vector<Pixel>(width * height)) {
}

Pixel Image::GetPixel(int x, int y) const {
    x = std::min(std::max(0, x), width_ - 1);
    y = std::min(std::max(0, y), height_ - 1);
    return pixels_.at(x + width_ * y);
}

void Image::SetPixel(Pixel pxl, int x, int y) {
    x = std::min(std::max(0, x), width_ - 1);
    y = std::min(std::max(0, y), height_ - 1);
    pixels_.at(x + width_ * y) = pxl;
}

void Image::SetPixel(double pxl, int x, int y) {
    x = std::min(std::max(0, x), width_ - 1);
    y = std::min(std::max(0, y), height_ - 1);
    pixels_.at(x + width_ * y) = Pixel(pxl, pxl, pxl);
}

Pixel& Image::FastAcssesPixel(int x, int y) {
    return pixels_[x + width_ * y];
}

int Image::GetHeight() const {
    return height_;
}

int Image::GetWidth() const {
    return width_;
}

Pixel operator+(const Pixel lhs, const Pixel rhs) {
    return Pixel(lhs.r + rhs.r, lhs.g + rhs.g, lhs.b + rhs.b);
}

Pixel operator+(const Pixel lhs, const double rhs) {
    return Pixel(lhs.r + rhs, lhs.g + rhs, lhs.b + rhs);
}

Pixel operator+(const double lhs, const Pixel rhs) {
    return Pixel(lhs + rhs.r, lhs + rhs.g, lhs + rhs.b);
}

Pixel operator-(const Pixel lhs, const Pixel rhs) {
    return Pixel(lhs.r - rhs.r, lhs.g - rhs.g, lhs.b - rhs.b);
}

Pixel operator-(const Pixel lhs, const double rhs) {
    return Pixel(lhs.r - rhs, lhs.g - rhs, lhs.b - rhs);
}

Pixel operator-(const double lhs, const Pixel rhs) {
    return Pixel(lhs - rhs.r, lhs - rhs.g, lhs - rhs.b);
}

Pixel operator*(const Pixel lhs, const Pixel rhs) {
    return Pixel(lhs.r * rhs.r, lhs.g * rhs.g, lhs.b * rhs.b);
}

Pixel operator*(const Pixel lhs, const double rhs) {
    return Pixel(lhs.r * rhs, lhs.g * rhs, lhs.b * rhs);
}

Pixel operator*(const double lhs, const Pixel rhs) {
    return Pixel(lhs * rhs.r, lhs * rhs.g, lhs * rhs.b);
}
