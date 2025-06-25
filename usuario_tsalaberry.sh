#!/bin/bash

# Desde el usuario Thiago que es el original de la VM se ejecutan los siguientes comandos

# Creamos el grupo tsalaberry
sudo groupadd tsalaberry

# Creamos el usuario con todo lo correspondiente
sudo useradd -m -s /bin/bash -g tsalaberry tsalaberry

# Ahora ingresamos la contraseña mediante prompt
sudo passwd tsalaberry

# Ingresamos la contraseña dos veces, 'thiago' en mi caso

# Le asignamos permisos de sudoers y permisos para ejecutar comandos con sudo sin contraseña. Tenemos que hacerlo con el usuario root
sudo su
cat <<EOF> /etc/sudoers.d/tsalaberry
tsalaberry ALL=(ALL) NOPASSWD:ALL
EOF
