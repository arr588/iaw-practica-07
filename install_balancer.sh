#!/bin/bash

# ------------------------------------------------------------------------------
# Instalación de la máquina balanceadora
# ------------------------------------------------------------------------------

# Habilitamos el modo de shell para mostrar los comandos que se ejecutan
set -x

# Actualizamos la lista de paquetes
apt update -y

# Instalamos el servidor web Nginx
apt install nginx -y

# Copiamos el archivo de configuración de Nginx
cp /home/ubuntu/default /etc/nginx/sites-available/

# Reiniciamos Nginx
systemctl restart nginx

# Comprobamos que no hay ningun fallo en el archivo
nginx -t