# Используем официальный образ Ubuntu
FROM ubuntu:latest

# Устанавливаем зависимости: CMake, компилятор, библиотеки
RUN apt-get update && apt-get install -y cmake g++ make git

# Создаем рабочую директорию в контейнере
WORKDIR /app

# Клонируем репозиторий из GitHub
RUN git clone https://github.com/username/repository.git /app

# Создаем папку для сборки и собираем проект с помощью CMake
RUN mkdir /app/build && cd /app/build && cmake /app && make

# Устанавливаем команду по умолчанию (запуск приложения)
CMD ["./build/my_project"]
