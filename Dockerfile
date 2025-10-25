FROM golang:1.25-alpine

WORKDIR /app

# Копируем файлы зависимостей
COPY go.mod ./
RUN go mod download

# Копируем исходный код
COPY . .

# Собираем приложение
RUN go build -o main .

# Экспонируем порт
EXPOSE 9001

# Команда для запуска
CMD ["./main"]