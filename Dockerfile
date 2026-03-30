# Use Node 18 to avoid Object.hasOwn error
FROM node:18

# Set working directory in container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your app
COPY . .

# Expose the port your Node app listens on
EXPOSE 8000

# Start the app
CMD ["node", "studregnode.js"]
