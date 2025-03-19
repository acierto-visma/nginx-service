# Usa la imagen oficial de Nginx
FROM nginx:latest

# Copia la configuración principal de Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Copia la configuración del sitio específico
COPY sites-available/site-frontend /etc/nginx/sites-available/site-frontend

# Crea el enlace simbólico en sites-enabled
RUN mkdir -p /etc/nginx/sites-enabled && \
    ln -s /etc/nginx/sites-available/site-frontend /etc/nginx/sites-enabled/site-frontend

# Copia los archivos HTML al directorio web de Nginx
COPY html/ /usr/share/nginx/html/

# Expone el puerto 80 para acceder al servicio
EXPOSE 80

# Inicia Nginx en modo foreground
CMD ["nginx", "-g", "daemon off;"]
