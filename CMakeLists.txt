# Указываем минимальную версию CMake
cmake_minimum_required(VERSION 3.10)

# Указываем имя проекта
project(MyProject)

# Указываем стандарт C++
set(CMAKE_CXX_STANDARD 11)

# Добавляем директорию src для поиска исходных файлов
include_directories(src)

# Создаём исполняемый файл из исходников
add_executable(MyProject src/main.cpp src/utils.cpp)

