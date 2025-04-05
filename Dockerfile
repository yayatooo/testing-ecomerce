# Use Bun official image
FROM oven/bun:latest

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and bun.lockb first (for caching dependencies)
COPY package.json bun.lockb ./

# Install dependencies
RUN bun install

# Copy the rest of the project files
COPY . .

# Expose the application port (adjust as needed)
EXPOSE 3000

# Run the application
CMD ["bun", "run", "start"]
