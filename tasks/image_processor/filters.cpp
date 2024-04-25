#include "filters.h"
#include <iostream>

Image& Filters::CropFilter(Image& image, int new_width, int new_height) {
    new_height = std::min(image.GetHeight(), new_height);
    new_width = std::min(image.GetWidth(), new_width);
    Image cropped_image(new_width, new_height);
    int height_diff = image.GetHeight() - cropped_image.GetHeight();
    for (int i = 0; i < std::min(cropped_image.GetWidth(), image.GetWidth()); ++i) {
        for (int j = 0; j < std::min(cropped_image.GetHeight(), image.GetHeight()); ++j) {
            cropped_image.SetPixel(image.GetPixel(i, height_diff + j), i, j);
        }
    }
    image = cropped_image;
    return image;
}

Image& Filters::GrayscaleFilter(Image& image) {
    for (int i = 0; i < image.GetWidth(); ++i) {
        for (int j = 0; j < image.GetHeight(); ++j) {
            Pixel gray_pixel(image.GetPixel(i, j).r * 0.299 + image.GetPixel(i, j).g * 0.587 +  // NOLINT
                             image.GetPixel(i, j).b * 0.114);                                   // NOLINT
            image.SetPixel(gray_pixel, i, j);
        }
    }
    return image;
}

Image& Filters::NegativeFilter(Image& image) {
    for (int i = 0; i < image.GetWidth(); ++i) {
        for (int j = 0; j < image.GetHeight(); ++j) {
            image.SetPixel(1 - image.GetPixel(i, j), i, j);
        }
    }
    return image;
}

Image& Filters::SharpeningFilter(Image& image) {
    Image sharp_image(image.GetWidth(), image.GetHeight());
    for (int i = 0; i < image.GetWidth(); ++i) {
        for (int j = 0; j < image.GetHeight(); ++j) {
            Pixel sharp_pixel = image.GetPixel(i, j) * 5 - image.GetPixel(i - 1, j) -  // NOLINT
                                image.GetPixel(i, j - 1) -                             // NOLINT
                                image.GetPixel(i + 1, j) - image.GetPixel(i, j + 1);   // NOLINT
            sharp_pixel.CutLimits();
            sharp_image.SetPixel(sharp_pixel, i, j);
        }
    }
    image = sharp_image;
    return image;
}

Image& Filters::EdgeDetectionFilter(Image& image, double threshold) {
    GrayscaleFilter(image);
    Image edge_image(image.GetWidth(), image.GetHeight());
    for (int i = 0; i < image.GetWidth(); ++i) {
        for (int j = 0; j < image.GetHeight(); ++j) {
            Pixel edge_pixel = image.GetPixel(i, j) * 4 - image.GetPixel(i, j + 1) -
                               image.GetPixel(i - 1, j) -                            // NOLINT
                               image.GetPixel(i + 1, j) - image.GetPixel(i, j + 1);  // NOLINT
            if (edge_pixel.r > threshold) {
                edge_image.SetPixel(Pixel(1), i, j);  // NOLINT
            } else {
                edge_image.SetPixel(Pixel(0), i, j);  // NOLINT
            }
        }
    }
    image = edge_image;
    return image;
}

Image& Filters::GaussianBlur(Image& image, double sigma) {
    double sigma_mult = 1 / (2 * M_PI * sigma * sigma);  // NOLINT
    const double sigma_radius = 3;                       // NOLINT
    std::vector<double> pow_mult;
    int range = static_cast<int>(sigma_radius * sigma);
    for (int i = 0; i <= range; ++i) {
        pow_mult.push_back(exp(-(i * i / (2 * sigma * sigma))));
    }
    Image gaussian(image.GetWidth(), image.GetHeight());
    for (int i = 0; i < image.GetWidth(); ++i) {
        for (int j = 0; j < image.GetHeight(); ++j) {
            for (int x = -range; x <= range; ++x) {
                gaussian.FastAcssesPixel(i, j) =
                    (gaussian.FastAcssesPixel(i, j) +
                     image.FastAcssesPixel(std::min(std::max(i + x, 0), image.GetWidth() - 1), j) *
                         pow_mult[std::abs(x)]);
            }
        }
    }
    for (int i = 0; i < image.GetWidth(); ++i) {
        for (int j = 0; j < image.GetHeight(); ++j) {
            image.FastAcssesPixel(i, j) = Pixel(0);
            for (int y = -range; y <= range; ++y) {
                image.FastAcssesPixel(i, j) =
                    (image.FastAcssesPixel(i, j) +
                     gaussian.FastAcssesPixel(i, std::min(std::max(j + y, 0), image.GetHeight() - 1)) *
                         pow_mult[std::abs(y)]);
            }
        }
    }
    for (int i = 0; i < image.GetWidth(); ++i) {
        for (int j = 0; j < image.GetHeight(); ++j) {
            image.FastAcssesPixel(i, j) = image.FastAcssesPixel(i, j) * sigma_mult;
        }
    }
    return image;
}

Image& Filters::TubeFilter(Image& image, double power) {
    int mid_w = image.GetWidth() / 2;
    int mid_h = image.GetHeight() / 2;
    Image tube_image(image.GetWidth(), image.GetHeight());
    for (int i = 0; i < image.GetWidth(); ++i) {
        for (int j = 0; j < image.GetHeight(); ++j) {
            double vec_x = static_cast<double>(i - mid_w) / image.GetWidth();
            double vec_y = static_cast<double>(j - mid_h) / image.GetHeight();
            double angle = (1 - hypot(vec_x, vec_y)) * power;
            int rot_x = mid_w + static_cast<int>((i - mid_w) * cos(angle) - (j - mid_h) * sin(angle));
            int rot_y = mid_h + static_cast<int>((i - mid_w) * sin(angle) + (j - mid_h) * cos(angle));
            tube_image.SetPixel(image.GetPixel(rot_x, rot_y), i, j);
        }
    }
    image = tube_image;
    return image;
}
