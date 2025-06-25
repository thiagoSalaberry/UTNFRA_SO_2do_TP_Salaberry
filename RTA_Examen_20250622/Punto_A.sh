#!/bin/bash

# Primero tenemos que crear las particiones del disco. Usaremos el disco de 10 GB /dev/sdb
# Con el comando 'sudo fdisk /dev/sdb' entramos en el wizard para crear las particiones. Las siguiente instrucciones se ejecutan dentro de dicho wizard

# Nueva partición
n

# Tipo de partición primaria
p

# Número de partición
1

# Primer sector (enter vacío para usar valor default)


# Asignamos el último sector pasándole el tamaño que queremos que tenga la partición
+2G

# Vamos con la segunda partición
n

# Tipo de partición primaria
p

# Número de partición
2

# Primer sector (enter vacío para usar valor default)


# Asignamos el último sector pasándole el tamaño que queremos que tenga la partición
+1G

# Salimos del wizard
q

# Verificamos que se hayan verificado las particiones
lsblk

# Ahora creamos los volúmenes físicos o PV
sudo pvcreate /dev/sdb1
sudo pvcreate /dev/sdb2

# Creamos los grupos de volúmenes o VG
sudo vgcreate vg_datos /dev/sdb1
sudo vgcreate vg_temp /dev/sdb2

# Creamos los volúmenes lógicos o LV
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
# El de la memoria SWAP lo dejo para después

# Ahora formateamos ambos LV
sudo mkfs.ext4 /dev/vg_datos/lv_docker 
sudo mkfs.ext4 /dev/vg_datos/lv_workareas

# Ahora montamos ambos volúmenes
sudo mkdir -p /var/lib/docker
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mkdir -p /work
sudo mount /dev/vg_datos/lv_workareas /work

# Ahora los agregamos a /etc/fstab para que se monten al iniciar el sistema. Se tiene que hacer con el usuario root
sudo su
cat <<EOF>> /etc/fstab
> /dev/vg_datos/lv_docker /lib/var/docker ext4 defaults 0 0
> /dev/vg_datos/lv_workareas /work ext4 defaults 0 0 
EOF

# Volvemos a nuestro ususario
su tsalaberry

# Ahora vamos a crear el LV de la memoria SWAP
sudo lvcreate -L 512M -n lv_swap vg_temp

# No la formateamos, pero la marcamos como área SWAP
sudo mkswap /dev/vg_temp/lv_swap

# Podemos verificar con 'free -h' que todavía la memoria SWAP no tiene espacio asignado. Para eso, tenemos que activar el volumen
sudo swapon /dev/vg_temp/lv_swap

# Ahora con 'free -h' deberíamos ver que la memoria SWAP tiene asignada el espacio del LV que creamos anteriormente de 512M

# Lo agregamos a /etc/fstab con el usuario root
sudo su
cat <<EOF>> /etc/fstab
> /dev/vg_temp/lv_swap none swap sw 0 0
EOF
su tsalaberry

echo "Punto A terminado!"

