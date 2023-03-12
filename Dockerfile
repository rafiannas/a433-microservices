#mengampil image node versi 14 yang alpine
FROM node:14-alpine     

#menambah keterangan label 
LABEL author="Rafi Annas"

#mendefinisikan working directory ada di path /app
WORKDIR /app

#copy semua file yang ada di path default ke image yang ada di path default juga
COPY . .

#menentukan bahwa aplikasi berjalan di mode production dan menggunakan container item-db pada host nya
ENV NODE_ENV=production DB_HOST=item-db

#menginstal dependency di mode production dan kemudian build aplikasi kembali
RUN npm install --production --unsafe-perm && npm run build

#ekspose bahwa port yang digunakan aplikasi
EXPOSE 8080

#mencalankan server ketika container dijalankan
CMD ["npm", "start"]