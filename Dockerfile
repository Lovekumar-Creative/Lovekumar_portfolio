# Use NGINX base image
FROM nginx:alpine

# Remove default page
RUN rm -rf /usr/share/nginx/html/*

# Copy all files to the default Nginx HTML directory
COPY . /usr/share/nginx/html

EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
