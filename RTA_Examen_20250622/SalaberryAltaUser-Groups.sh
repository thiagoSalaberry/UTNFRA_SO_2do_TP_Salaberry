#!/bin/bash

# Este archivo servirá para crear usuarios nuevos con sus grupos y directorios de trabajo asignando como contraseña del usuario la misma contraseña del usuario que se pase como primer parámetro
# Ejemplo: para crear el usuario:grupo juan:grupo_juan primero deberemos crear el grupo grupo_juan, luego obtener la contraseña del usuario base y finalmente crear el usuario con dicha contraseña, directorio de trabajo y nombre de usuario

# Primero verificamos que se hayan pasado los parámetros 
if [ -z "$1" ] || [ -z "$2" ]; then
	echo "Error: faltan parámetros"
	echo "Cómo usar: sudo $0 <usuario_base_para_la_contraseña> <ruta_a_archivo_de_lista_de_usuarios.txt>"
	exit 1
fi

# Los convertimos en variables
base_user=$1
lista_usuarios=$2

# Obtenemos el hash de la contraseña del usuario pasado
HASH=$(sudo cat /etc/shadow | grep "$base_user" | awk -F: '{print $2}')

# Iteramos sobre el archivo cada una de las líneas ignorando las comentadas que empiezan con #
for i in $(cat $lista_usuarios | grep -v ^#)
do
	usuario=$(echo $i | awk -F, '{print $1}')
	grupo=$(echo $i | awk -F, '{print $2}')
	wd=$(echo $i | awk -F, '{print $3}')

	# Primero creamos el grupo en caso de que no exista
	sudo groupadd "$grupo"

	# Ahora creamos el comando con todos los parámetros necesarios para asignarle el grupo, contraseña del usuario base y directorio de trabajo
	sudo useradd -m -d "$wd" -s /bin/bash -g "$grupo" -p "$HASH" "$usuario"
	echo "Se creó el usuario '$usuario' con el grupo '$grupo' con directorio de trabajo en '$wd' con la contraseña del usuario '$base_user'"
	echo ""
done

