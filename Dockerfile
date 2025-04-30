# Use NGINX base image
FROM nginx:alpine

# Remove default page
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML to nginx directory
COPY index.html /usr/share/nginx/html/

EXPOSE 80
