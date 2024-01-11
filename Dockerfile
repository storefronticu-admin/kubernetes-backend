# Use the official Node 20 image as the base image
FROM node:20

# Set the working directory inside the container
WORKDIR /app

# Copy the local directory into the container at /app
COPY . /app

# Install dependencies using npm
RUN npm install

# Install the webcompiler
RUN npm i @swc/core

# Expose port 9000
EXPOSE 9000

# Command to run your application
CMD ["npm", "start"]
