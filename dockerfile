# Use uma imagem oficial do Node.js como base
FROM node:18

# Defina o diretório de trabalho no container
WORKDIR /app

# Copie o arquivo package.json e package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie o restante dos arquivos para o diretório de trabalho
COPY . .

# Exponha a porta que o servidor irá utilizar
    EXPOSE 5500 

# Comando para rodar o servidor
CMD ["node", "app.js"]
