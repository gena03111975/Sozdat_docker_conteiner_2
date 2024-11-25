# Устанавливаем образ, содержащий JDK
FROM openjdk:latest
# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /usr/src/app
# Копируем исходный код приложения внутрь контейнера
COPY ./src/main/java .
# Компилируем Java исходный код
RUN javac -sourcepath . -d out ./gb/simple/Main.java
# Теперь рабочая директория - директория с файлами .class
WORKDIR /usr/src/app/out
# CMD java -classpath . gb.simple.Main

