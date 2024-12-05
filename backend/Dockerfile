# Node.js base image
FROM node:16

# working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

#install dependencies
RUN npm install

# Copy the application code
COPY . .

# Expose the  port
EXPOSE 5000

# command to run the application
CMD ["npm", "start"]
