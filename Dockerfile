FROM alpine:latest

# Install Node.js and npm
RUN apk add --no-cache nodejs npm curl

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first (if exists)
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy all project files after dependencies are installed
COPY . .

# Set default command (Optional, replace with your app's start command)
CMD ["node", "--version"]

