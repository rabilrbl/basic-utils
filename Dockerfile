# Use Node.js 14 LTS as the base image
FROM oven/bun:alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json .
COPY bun.lockb .

# Install dependencies
RUN bun install --production

# Copy the rest of the application code
COPY src ./src

# Expose the port your app runs on
EXPOSE 3000

# Start the application
CMD ["bun", "start"]
