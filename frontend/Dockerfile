# Node.js base image
FROM node:16 AS build

# working directory
WORKDIR /app

# Copy package files
COPY package*.json ./
#install dependencies
RUN npm install

# Copy source files
COPY . .

#build the application
RUN npm run build

# Use a lightweight server to serve the React app
FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html

# Expose Nginx port
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]