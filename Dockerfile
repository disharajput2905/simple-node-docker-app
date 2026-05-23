# Base image
FROM node:18

# Create app directory inside container
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy remaining files
COPY . .

# Expose app port
EXPOSE 3000

# Start application
CMD ["npm", "start"]
