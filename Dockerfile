# Usar a imagem oficial do Node.js como base
FROM node:16

# Definir o diretório de trabalho dentro do container
WORKDIR /usr

# Copiar o arquivo 'package.json' e, se disponível, 'package-lock.json'
COPY package*.json ./

# Instalar as dependências do projeto
RUN npm install

# Copiar os arquivos do projeto para o diretório de trabalho
COPY . .

# Abrir a porta que a aplicação usará
EXPOSE 5678

# Comando para iniciar a aplicação
CMD ["node", "./src/server.js"]