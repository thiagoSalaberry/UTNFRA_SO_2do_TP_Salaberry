#!/bin/bash

# El presente script detallará el proceso para completar el Punto D

# Primero nos vamos al directorio /home/tsalaberry/UTN-FRA_SO_Examenes/202406/ansible
carpeta="/home/tsalaberry/UTN-FRA_SO_Examenes/202406/ansible"
cd $carpeta

# Editamos el archivo playbook.yml para que tome de host al grupo [produccion] que es aquel que incluye a localhost
cat <<EOF> $carpeta/playbook.yml
---
- hosts: produccion
  become: true

  tasks:
    - include_role:
        name: 2do_parcial
EOF

# Cargamos los valores de nuestras variables en ./roles/2do_parcial/vars/main.yml
cat <<EOF> $carpeta/roles/2do_parcial/vars/main.yml
---
# vars file for 2do_parcial

nombre: Thiago
apellido: Salaberry
division: 116
EOF

# Ahora creamos los templates
mkdir $carpeta/roles/2do_parcial/templates
cat <<EOF> $carpeta/roles/2do_parcial/templates/datos_alumno.txt.j2
Nombre: {{ nombre }} Apellido: {{ apellido }}
División: {{ division }}
EOF
cat <<EOF> $carpeta/roles/2do_parcial/templates/datos_equipo.txt.j2
IP: {{ ansible_default_ipv4.address }}
Distribucion: {{ ansible_distribution }}
Cantidad de Cores: {{ ansible_processor_cores }}
EOF

# Ahora editamos el archivo $carpeta/roles/2do_parcial/tasks/main.yml y lo dejamos como sigue
cat <<EOF> $carpeta/roles/2do_parcial/tasks/mail.yml
---
# tasks file for 2do_parcial

- debug:
    msg: "Tareas del 2do Parcial"
- name: Crear carpeta base /tmp/2do_parcial
  file:
    path: /tmp/2do_parcial
    state: directory
    mode: '0755'

- name: Crear subcarpeta alumno
  file:
    path: /tmp/2do_parcial/alumno
    state: directory
    mode: '0755'

- name: Crear subcarpeta equipo
  file:
    path: /tmp/2do_parcial/equipo
    state: directory
    mode: '0755'

- name: Generar datos_alumno.txt desde la plantilla
  template:
    src: datos_alumno.txt.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt
    mode: '0644'

- name: Generar datos_equipo.txt desde la plantilla
  template:
    src: datos_equipo.txt.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt
    mode: '0644'

- name: Dar permisos de sudoers y permitir ejecutar sin contraseña al usuario '2PSupervisores'
  copy:
    dest: /etc/sudoers.d/2PSupervisores
    content: "2PSupervisores ALL=(ALL) NOPASSWD:ALL\n"
    mode: '0440'
    owner: root
    group: root
EOF

# Repasando el comando anterior
# Primero se crea la carpeta base en /tmp/2do_parcial
# Luego se crean las carpetas alumno y equipo dentro de ella
# Después se crean los archivos datos_usuario.txt y datos_equipo.txt respectivamente mediante un template que saca los valores de las variables del archivo ./roles/2do_parcial/vars/main.yml
# Finalmente, le damos permisos de sudoer y le permitimos ejecutar comandos de sudo sin contraseña al usuario 2PSupervisores

# Una vez tenemos todo configurado, estamos listos para correr el siguiente comando
ansible-playbook -i $carpeta/inventory/hosts $carpeta/playbook.yml

# Podemos corroborar la creación de los archivos de la siguiente manera
ls /tmp
ls -R /tmp/2do_parcial
cat /tmp/2do_parcial/*/*.txt

# Eso nos debería mostrar el contenido de ambos archivos

# Y de los permisos de 2PSupervisores
sudo cat /etc/sudoers.d/2PSupervisores

# Eso nos debería mostrar algo como '2PSupervisores ALL=(ALL) NOPASSWD:ALL'

echo "Punto D terminado!"
