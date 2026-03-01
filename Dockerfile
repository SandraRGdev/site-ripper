FROM nginx:alpine

# Copy the site files to nginx html directory
COPY lacreativaperfecta.com/ /usr/share/nginx/html/

# Copy nginx configuration if needed, or use default
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
