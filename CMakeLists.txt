cmake_minimum_required(VERSION 3.10)

# Название проекта
project(my_project)

# Используемый стандарт C++
set(CMAKE_CXX_STANDARD 11)

# Добавляем директорию src для поиска заголовочных файлов
include_directories(src)

# Добавляем исполняемый файл, указывая исходные файлы
add_executable(my_project src/main.cpp src/utils.cpp)
