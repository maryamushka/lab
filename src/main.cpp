#include <iostream>
#include "utils.h"

int main() {
    std::cout << "2 + 3 = " << add(2, 3) << std::endl;
    std::cout << "5 - 2 = " << subtract(5, 2) << std::endl;
    std::cout << "4 * 3 = " << multiply(4, 3) << std::endl;
    std::cout << "8 / 2 = " << divide(8, 2) << std::endl;
    return 0;
}

