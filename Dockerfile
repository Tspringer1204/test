FROM alpine:latest

# Install Node.js and npm
RUN apk add --no-cache nodejs npm curl

# Set working directory inside the container
WORKDIR /app

# Copy package.json (ignore package-lock.json if it doesn't exist)
COPY package.json ./

# Install dependencies (will work even if package-lock.json is missing)
RUN npm install

# Copy everything else
COPY . .

# Default command
CMD ["node", "--version"]

