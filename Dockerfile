# Use an official Node runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Install `create-react-app` globally
RUN npm install -g create-react-app

# Create a new React app
RUN create-react-app my-app

# Change working directory to the new React app
WORKDIR /app/my-app

# Install serve to serve the app
RUN npm install -g serve

# Build the React app
RUN npm run build

# Serve the React app
CMD ["serve", "-s", "build"]

# Expose port 3000 to the outside world
EXPOSE 3000
