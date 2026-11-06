
FROM nginx:1.27-alpine

# Configuración de Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Archivo HTML principal
COPY index.html /usr/share/nginx/html/index.html

# Archivo CSS del portafolio
COPY styles.css /usr/share/nginx/html/styles.css

# Imágenes y recursos
COPY assets/ /usr/share/nginx/html/assets/

# Puerto del servidor
EXPOSE 80

# Iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]
