#include <iostream>
#include "utils.cpp"

int main() {
    int a = 10, b = 5;
    
    std::cout << "Сложение: " << add(a, b) << std::endl;  
    std::cout << "Вычитание: " << subtract(a, b) << std::endl;
    return 0;
}
