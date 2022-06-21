# Build 
FROM node:17.9-alpine AS build
COPY . /frontend
WORKDIR /frontend
RUN npm config set strict-ssl=false
RUN npm install
RUN npm run build

# Deploy 
FROM nginx:1.21.6-alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=build /frontend/dist/hello-world /usr/share/nginx/html