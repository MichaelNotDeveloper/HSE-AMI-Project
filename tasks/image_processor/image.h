#pragma once

#include <vector>
#include <string>

struct Pixel {
    double r;
    double g;
    double b;
    Pixel();
    explicit Pixel(double tone);
    Pixel(double r, double g, double b);
    void CutLimits();
};

class Image {
public:
    Image();
    Image(int width, int height);
    void SetPixel(Pixel pxl, int x, int y);
    void SetPixel(double pxl, int x, int y);
    Pixel GetPixel(int x, int y) const;
    Pixel& FastAcssesPixel(int x, int y);
    int GetWidth() const;
    int GetHeight() const;

private:
    int width_;
    int height_;
    std::vector<Pixel> pixels_;
};

Pixel operator+(const Pixel lhs, const Pixel rhs);
Pixel operator+(const Pixel lhs, const int rhs);
Pixel operator+(const double lhs, const Pixel rhs);
Pixel operator-(const Pixel lhs, const Pixel rhs);
Pixel operator-(const Pixel lhs, const double rhs);
Pixel operator-(const double lhs, const Pixel rhs);
Pixel operator*(const Pixel lhs, const Pixel rhs);
Pixel operator*(const Pixel lhs, const double rhs);
Pixel operator*(const double lhs, const Pixel rhs);
