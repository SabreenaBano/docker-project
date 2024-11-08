# Use an official Node.js image as the base
FROM node:14

# Create and set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install any project dependencies
RUN npm install

# Copy the application files to the container
COPY . .

# Expose the container's port (80) to the host
EXPOSE 80

# Command to run the application
CMD ["node", "app.js"]

