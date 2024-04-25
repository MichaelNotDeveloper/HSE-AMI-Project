#pragma once

#include <vector>
#include <math.h>
#include "image.h"

class Filters {
public:
    Image& CropFilter(Image& image, int new_width, int new_height);
    Image& GrayscaleFilter(Image& image);
    Image& NegativeFilter(Image& image);
    Image& SharpeningFilter(Image& image);
    Image& EdgeDetectionFilter(Image& image, double threshold);
    Image& GaussianBlur(Image& image, double sigma);
    Image& TubeFilter(Image& image, double power);
};
