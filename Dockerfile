FROM node:18-alpine AS builde

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

# RUN npm run build
EXPOSE 3000

CMD ["npm", "start"]
# FROM nginx:stable-alpine
# EXPOSE 80
# COPY --from=build /app/build /usr/share/nginx/html
