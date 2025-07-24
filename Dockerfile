# Vulnerable base image (from 2020)
FROM node:12.18.3

# Set working directory
WORKDIR /usr/src/app

# Copy a sample vulnerable app (you can skip this or add your own)
COPY . .

# Install outdated/vulnerable dependencies
RUN npm install express@3.0.0

# Expose the app port
EXPOSE 3000

# Start the app (add an app.js or change as needed)
CMD ["node", "app.js"]
