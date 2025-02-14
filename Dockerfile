# Используем официальный образ Ubuntu
FROM ubuntu:latest

# Устанавливаем зависимости: CMake, компилятор, библиотеки
RUN apt-get update && apt-get install -y cmake g++ make

# Создаем рабочую директорию в контейнере
WORKDIR /app

# Копируем все файлы проекта в контейнер
COPY . .

# Создаем папку для сборки
RUN mkdir build && cd build && cmake .. && make

# Устанавливаем команду по умолчанию (запуск приложения)
CMD ["./build/MyProject"]
