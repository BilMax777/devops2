# Указываем базовый образ
FROM node:14

# Устанавливаем рабочую директорию
WORKDIR /usr/src/app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем все файлы приложения
COPY . .

# Указываем порт
EXPOSE 8080

# Команда для запуска приложения
CMD ["node", "app.js"]
