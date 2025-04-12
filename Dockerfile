# Use official Node.js image from Docker Hub
FROM node:14

# Set working directory inside container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json /app
RUN npm install

# Copy the rest of the app files
COPY . /app

# Expose port 3000
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
