FROM node:20.12.2

WORKDIR /app

# Copiar arquivos necessários
COPY package*.json ./
COPY prisma ./prisma/

# Instalar dependências, incluindo Prisma
RUN npm install

# Gerar código Prisma
RUN npx prisma generate

# Copiar o restante dos arquivos
COPY . .

# Porta exposta pela aplicação
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "run", "start"]
