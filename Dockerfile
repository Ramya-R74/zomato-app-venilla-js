# Use an official Nginx image as the base image
FROM nginx:alpine

# Add maintainer information using a label
LABEL maintainer="Ramya R <ramyawork22@gmail.com>"

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the application files to the container
COPY . .

# Expose port 80 for serving the application
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]

