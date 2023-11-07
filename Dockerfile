# mengambil image untuk node:14
FROM node:14-alpine

# untuk membuat workdir app
WORKDIR /app

# mengcopy semua file ke app
COPY . /app

# Untuk membuat node environment
ENV NODE_ENV=production DB_HOST=item-db 

# untuk install dependencies
RUN npm install --production --unsafe-perm && npm run build

# untuk publish ke port 8080
EXPOSE 8080

# menjalankan perintah npm start
CMD ["npm","start"]
