# Build 
FROM node:17.9-alpine AS build
WORKDIR /usr/src/hello-world
COPY /angular/hello-world/package.json /angular/hello-world/package-lock.json ./
RUN npm config set strict-ssl=false
RUN npm install
COPY . .
WORKDIR /usr/src/hello-world/angular/hello-world
RUN npm run build

# Deploy 
FROM nginx:1.21.6-alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=build /usr/src/hello-world/angular/hello-world/dist/hello-world /usr/share/nginx/html