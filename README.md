# iaw-practica-07

## Balanceador de carga con Nginx

Para los front y back-end de esta práctica he usado los scripts de la práctica anterior ya que no necesitaban modificación.

Para el script de la máquina balanceadora simplemente he instalado Nginx y he modificado su archivo de configuración de esta manera:

```
upstream frontend {
        server 172.31.59.67;
        server 172.31.47.215;
}
    
    server {
        
        listen 80;

        location / {
                proxy_pass http://frontend;
        }
}
```

De esta forma la máquina escucha las peticiones del puerto 80 a su IP y las redirige a los dos front-end que hemos creado. Como se puede ver están agrupadas en la linea de `proxy_pass` en frontend.