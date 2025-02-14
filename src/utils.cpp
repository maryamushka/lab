#include <iostream>

int add(int x, int y) {
    return x + y;
}

int subtract(int x, int y) {
    return x - y;
}

int multiply(int x, int y) {
    return x * y;
}

float divide(int x, int y) {
    if (y == 0) {
        std::cerr << "Ошибка: деление на ноль!" << std::endl;
        return 0; 
    }
    return static_cast<float>(x) / y;
}
