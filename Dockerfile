# Use the official Nginx image as the base image
FROM nginx:alpine

# Remove the default Nginx configuration and web files
RUN rm -rf /usr/share/nginx/html/*

# Copy the HTML file to the Nginx document root
COPY index.html /usr/share/nginx/html/

# Expose port 80 to allow web traffic
EXPOSE 5000

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
