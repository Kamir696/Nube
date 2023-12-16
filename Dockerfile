# Usa una imagen base de Node.js
FROM node:latest

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia los archivos de tu aplicación al contenedor
COPY package*.json ./
COPY src ./src/

# Instala las dependencias de tu aplicación
RUN npm install

# Expone el puerto en el que se ejecuta tu aplicación (el mismo puerto 3000 definido en tu código)
EXPOSE 3000

# Comando para iniciar la aplicación cuando se ejecute el contenedor
CMD ["npm", "src/index.js"]
