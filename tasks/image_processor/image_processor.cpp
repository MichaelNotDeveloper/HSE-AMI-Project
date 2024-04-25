#include "image.cpp"
#include "bmp_reader.cpp"
#include "filters.cpp"
#include "filters_parser.cpp"

int main(int argc, char** argv) {
    FiltersParser tasks(argc, argv);
    BMPReader stream;
    Filters filter;
    Image image;
    stream.ReadBMP(tasks.input_file, image);
    for (size_t i = 0; i < tasks.Size(); ++i) {
        if (tasks.names[i] == "crop") {
            if (tasks.params[i].size() != 2) {
                throw std::runtime_error("Wrong parameters for filter " + tasks.names[i]);
            }
            if (atoi(tasks.params[i][0].c_str()) < 0 || atoi(tasks.params[i][1].c_str()) < 0) {
                throw std::runtime_error("Wrong parameters for filter " + tasks.names[i]);
            }
            filter.CropFilter(image, atoi(tasks.params[i][0].c_str()), atoi(tasks.params[i][1].c_str()));
        } else if (tasks.names[i] == "gs") {
            if (!tasks.params[i].empty()) {
                throw std::runtime_error("Wrong parameters for filter " + tasks.names[i]);
            }
            filter.GrayscaleFilter(image);
        } else if (tasks.names[i] == "neg") {
            if (!tasks.params[i].empty()) {
                throw std::runtime_error("Wrong parameters for filter " + tasks.names[i]);
            }
            filter.NegativeFilter(image);
        } else if (tasks.names[i] == "sharp") {
            if (!tasks.params[i].empty()) {
                throw std::runtime_error("Wrong parameters for filter " + tasks.names[i]);
            }
            filter.SharpeningFilter(image);
        } else if (tasks.names[i] == "edge") {
            if (tasks.params[i].size() != 1) {
                throw std::runtime_error("Wrong parameters for filter " + tasks.names[i]);
            }
            filter.EdgeDetectionFilter(image, atof(tasks.params[i][0].c_str()));
        } else if (tasks.names[i] == "blur") {
            if (tasks.params[i].size() != 1) {
                throw std::runtime_error("Wrong parameters for filter " + tasks.names[i]);
            }
            if (atoi(tasks.params[i][0].c_str()) < 0) {
                throw std::runtime_error("Wrong parameters for filter " + tasks.names[i]);
            }
            filter.GaussianBlur(image, atof(tasks.params[i][0].c_str()));
        } else if (tasks.names[i] == "tube") {
            if (tasks.params[i].size() != 1) {
                throw std::runtime_error("Wrong parameters for filter " + tasks.names[i]);
            }
            filter.TubeFilter(image, atof(tasks.params[i][0].c_str()));
        } else {
            throw std::runtime_error("No such filter named" + tasks.names[i]);
        }
    }
    stream.WriteBMP(tasks.output_file, image);
    return 0;
}
