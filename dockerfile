# Use the official Node.js v14 image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the source code to the container
COPY . .

# Build the application
RUN npm run build

# Expose the port on which the application will listen
EXPOSE 3000

# Start the application
CMD [ "npm", "run", "start:prod" ]
