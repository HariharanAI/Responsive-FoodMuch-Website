# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy your Nginx configuration file to the container
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy the HTML, CSS, and JavaScript files to Nginx's default directory
COPY main.html /usr/share/nginx/html/main.html
COPY main.css /usr/share/nginx/html/main.css

# Expose port 5080
EXPOSE 5080

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
