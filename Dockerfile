# Используем официальный образ Ubuntu
FROM ubuntu:latest

# Устанавливаем зависимости: CMake, компилятор, библиотеки
RUN apt-get update && apt-get install -y cmake g++ make git

# Создаем рабочую директорию в контейнере
WORKDIR /app

# Клонируем репозиторий из GitHub
RUN git clone https://github.com/maryamushka/lab .

# Проверяем содержимое директории /app
RUN ls -l /app

# Создаем папку для сборки и собираем проект с помощью CMake
RUN mkdir build && cd build && cmake .. && make

# Устанавливаем команду по умолчанию (запуск приложения)
CMD ["./build/my_project"]
