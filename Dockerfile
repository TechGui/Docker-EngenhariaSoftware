# Dockerfile na pasta 'Docker'

# Etapa de construção da aplicação React com Vite
FROM node:20.12.2 as build

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

# Etapa de produção
FROM nginx:1.21.1-alpine

COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
