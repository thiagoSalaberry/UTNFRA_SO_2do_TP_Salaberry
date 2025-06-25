#!/bin/bash

# El presente script detallará el proceso para completar el Punto C

# Nos paramos en el path del repo
cd UTN-FRA_SO_Examenes/202406/docker

# Editamos el contenido del archivo index.html con vim o EOF, yo lo hice con vim
vim index.html

# Creamos el directorio de la imagen
mkdir web1-salaberry
cd web1-salaberry 

# Movemos el index.html
mv ../index.html .

# Creamos el Dockerfile con vim o EOF, esta vez con EOF
cat <<EOF>> Dockerfile
> FROM nginx:latest
>
> COPY index.html /usr/share/nginx/html/index.html
EOF

# Hacemos el build
docker build -t web1-salaberry .

# Lo probamos
docker run -d -p 8080:80 web1-salaberry
curl localhost:8080
# Acá deberíamos ver el contenido del HTML

# Nos logueamos en Docker
docker login -u thiagoutn
# Pegamos el token que tiene que tener permisos de read, write y delete

# Creamos el tag de la imagen
docker tag web1-salaberry thiagoutn/web1-salaberry:latest

# Publicamos la imagen en nuestro docker hub
docker push thiagoutn/web1-salaberry:latest

echo "Punto C terminado!"
