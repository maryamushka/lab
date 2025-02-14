# Используем образ Ubuntu
FROM ubuntu:latest

# Устанавливаем Git и другие зависимости
RUN apt-get update && apt-get install -y git cmake g++ make

# Клонируем репозиторий из GitHub в папку /app
RUN git clone https://github.com/username/repository.git /app

# Устанавливаем рабочую директорию на /app (где находится CMakeLists.txt)
WORKDIR /app

# Создаем директорию для сборки и выполняем сборку с CMake
RUN mkdir build && cd build && cmake .. && make

# Указываем команду, которая будет выполняться при запуске контейнера
CMD ["./build/my_project"]
