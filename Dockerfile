# Use a imagem oficial do Node.js como base
FROM node:16

# Defina o diretório de trabalho no container
WORKDIR /usr/src/app

# Copie os arquivos package.json e package-lock.json
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie o restante dos arquivos do projeto
COPY . .

# Exponha a porta em que o JSON Server estará rodando
EXPOSE 5000

# Comando para rodar o JSON Server
CMD ["npx", "json-server", "--watch", "db.json", "--host", "0.0.0.0", "--port", "5000"]
