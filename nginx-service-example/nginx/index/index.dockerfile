FROM nginx:latest

# Copy index.html to the default nginx web directory
COPY index.html /usr/share/nginx/html/index/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
