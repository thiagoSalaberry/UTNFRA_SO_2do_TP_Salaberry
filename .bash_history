whoami
sudo su
su
cd ~
ls
cd RTA_Examen_20250622/
ls
ls -R /dev/sdb
ll -la /dev/
lsblk
ls /var/lib
ls /var/lib/docker
sudo ls /var/lib/docker
ls /
ls /work
sudo mkdir /work
ls /dev
ls -la /dev
ls -la /dev/vg_datos/
sudo mkfs.ext4 /dev/vg_datos/lv_docker 
sudo mkfs.ext4 /dev/vg_datos/lv_workareas 
sudo lsblk -f
man mount
df -h
sudo mount /dev/vg_datos/lv_docker /var/lib/docker/
df -h
sudo mount /dev/vg_datos/lv_workareas /work/
df -h
lsblk
cat ~/.bash_history 
cat <<EOF>> /etc/fstab
/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 0
/dev/vg_datos/lv_workareas /work ext4 defaults 0 0
EOF

sudo EOF
sudo cat <<EOF>> /etc/fstab
/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 0
/dev/vg_datos/lv_workareas /work ext4 defaults 0 0
EOF

ls
cat Punto_A.sh 
vim Punto_A.sh 
lsblk
fdisk /dev/sdb
sudo fdisk /dev/sdb
q
vim Punto_A.sh 
cat Punto_A.sh 
vim Punto_A.sh 
cat /etc/fstab
vim Punto_A.sh 
cat ~/.bash_history 
cat ~/.bash_history | less
vim Punto_A.sh 
sudo systemctl status docker
sudo systemctl restart docker
sudo systemctl status docker
sudo systemctl stop docker
sudo systemctl status docker
sudo systemctl start docker
sudo systemctl status docker
ls
ls -R
cat Punto_A.sh 
touch /usr/local/bin/SalaberryAltaUser-Groups.sh
sudo touch /usr/local/bin/SalaberryAltaUser-Groups.sh
getent passwd
sudo vim /usr/local/bin/SalaberryAltaUser-Groups.sh
cat /etc/shadow
sudo cat /etc/shadow
vim /usr/local/bin/SalaberryAltaUser-Groups.sh 
cat /usr/local/bin/SalaberryAltaUser-Groups.sh 
sudo vim /usr/local/bin/SalaberryAltaUser-Groups.sh 
sudo ll /usr/local/bin/SalaberryAltaUser-Groups.sh 
sudo ls -l /usr/local/bin/SalaberryAltaUser-Groups.sh 
sudo chmod 774 /usr/local/bin/SalaberryAltaUser-Groups.sh
sudo ls -l /usr/local/bin/SalaberryAltaUser-Groups.sh 
sudo vim /usr/local/bin/SalaberryAltaUser-Groups.sh
sudo /usr/local/bin/SalaberryAltaUser-Groups.sh
sudo /usr/local/bin/SalaberryAltaUser-Groups.sh Thiago
sudo vim /usr/local/bin/SalaberryAltaUser-Groups.sh 
sudo /usr/local/bin/SalaberryAltaUser-Groups.sh
sudo /usr/local/bin/SalaberryAltaUser-Groups.sh Thiago
sudo vim /usr/local/bin/SalaberryAltaUser-Groups.sh 
sudo /usr/local/bin/SalaberryAltaUser-Groups.sh Thiago
sudo vim /usr/local/bin/SalaberryAltaUser-Groups.sh 
sudo /usr/local/bin/SalaberryAltaUser-Groups.sh Thiago
sudo vim /usr/local/bin/SalaberryAltaUser-Groups.sh 
sudo /usr/local/bin/SalaberryAltaUser-Groups.sh Thiago
sudo /usr/local/bin/SalaberryAltaUser-Groups.sh Thiago asd
sudo /usr/local/bin/SalaberryAltaUser-Groups.sh 
pwd
ls ..
ls /home
ls /home/Thiago/
sudo ls /home/Thiago/
sudo ls /home/Thiago/tp2
sudo ls /home/Thiago/tp2/UTN-FRA_SO_Examenes
pwd
cd ..
ls
pdw
pwd
git clone https://github.com/upzot/UTN-FRA_SO_Examenes.git
getent passwd
getent shadow
free
free -h
lsblk
sudo vgcreate vg_temp /dev/sdb2
ll /dev/
sudo vgcreate vg_temp /dev/sdb2
sudo vgs
sudo vgremove vg_temp
sudo vgs
sudo vgcreate vg_temp /dev/sdb2
lsblk
sudo lvcreate -L 512M -n lv_swap vg_temp
sudo lvs
sudo mkswap /dev/vg_temp/lv_swap
free -h
sudo swapon /dev/vg_temp/lv_swap
free -h
sudo su
sudo su
pwd
ls
cd ..
su
su 
docker run hello-world
cat index.html 
vim index.html 
cat index.html 
sudo ls ~/../Thiago/
sudo ls ~/../Thiago/facultad
sudo ls ~/../Thiago/facultad/*Docker
sudo ls ~/../Thiago/facultad/UTN-FRA_SO_Docker
sudo ls ~/../Thiago/facultad/UTN-FRA_SO_Docker/ejemplo0
sudo ls ~/../Thiago/facultad/UTN-FRA_SO_Docker/ejemplo1
sudo ls ~/../Thiago/facultad/UTN-FRA_SO_Docker/ejemplo3
sudo ls ~/../Thiago/facultad/UTN-FRA_SO_Docker/ejemplo2
sudo cat ~/../Thiago/facultad/UTN-FRA_SO_Docker/ejemplo0/run.sh
sudo cat ~/../Thiago/facultad/UTN-FRA_SO_Docker/ejemplo0/01_run.sh
sudo cat ~/../Thiago/facultad/UTN-FRA_SO_Docker/ejemplo1/run.sh
ls "$PWD"/share/html
ls /user/share/html
ls
docker run -d -p 80:80 "$PWD"/index.html:/usr/share/nginx/html nginx
docker run --help
ls /usr/share
ls /usr/share/nginx
sudo cat ~/../Thiago/facultad/UTN-FRA_SO_Docker/ejemplo1/run.sh
sudo ls ~/../Thiago/facultad/UTN-FRA_SO_Docker/ejemplo1
cat ls ~/../Thiago/facultad/UTN-FRA_SO_Docker/ejemplo1/share
sudo cat ls ~/../Thiago/facultad/UTN-FRA_SO_Docker/ejemplo1/share
sudo ls ls ~/../Thiago/facultad/UTN-FRA_SO_Docker/ejemplo1/share
sudo ls ls ~/../Thiago/facultad/UTN-FRA_SO_Docker/ejemplo1/share/html
sudo cat ls ~/../Thiago/facultad/UTN-FRA_SO_Docker/ejemplo1/share/html/index.html
sudo ls ~/../Thiago/facultad/UTN-FRA_SO_Docker/ejemplo1
sudo cat ~/../Thiago/facultad/UTN-FRA_SO_Docker/ejemplo1/run.sh
sudo ~/../Thiago/facultad/UTN-FRA_SO_Docker/ejemplo1/run.sh
sudo ls -l /var/lib/docker/tmp
sudo ls -l /var/lib/docker/tmp/
sudo ls /var/lib/docker/tmp/
sudo ls /var/lib/docker/tmp/GetImageBlob3017632589
df -h
sudo lvresize -L 512M /dev/vg_datos/lv_docker
df -h
sudo vgs
sudo umount /work
pwd
ls
cat index.html 
ls /work
sudo lsof +f -- /work
exit
sudo lsof +f -- /work
exit
cd ~
pwd
ls
sudo lsof +f -- /work
sudo umount /work
sudo kill 6613
sudo umount /work
pwd
cd
ls
cd RTA_Examen_20250622/
ls
cat Punto_B.sh 
vim Punto_B.sh 
ls
cat SalaberryAltaUser-Groups.sh 
cd ../UTN-FRA_SO_Examenes/202406/docker/
ls
pwd
cat index.html 
docker run hello-world
sudo docker run hello-world
docker run hello-world
echo $USER
sudo usermod -aG docker $USER
docker run hello-world
sudo su
ls
cd RTA_Examen_20250622/
ls
cp /usr/local/bin/SalaberryAltaUser-Groups.sh .
ls
cat SalaberryAltaUser-Groups.sh 
su 2P_202406_Prog1
pd
pwd
ls
cd tsalaberry/
ls
git clone https://github.com/upszot/UTN-ARQ_SO_Examenes.git
sudo ls /home/Thiago/.ssh
sudo cat /home/Thiago/.ssh authorized_keys
sudo cat 
sudo cat /home/Thiago/.ssh/known_hosts
ls -la ~/.ssh
ls -l
ls -l ~
ls -la ~
ssh-keygen -t ed25519 -f ~/.ssh -N ""
ls -la ~
ls -la ~/-ssh
ls -la ~/.ssh
ls -la ~/.ssh/
rm ~/.ssh ~/.ssh.pub 
ssh-keygen -t ed25519 -f ~/.ssh/ed25519 -N ""
ls -la ~/.ssh/
git clone https://github.com/upszot/UTN-ARQ_SO_Examenes.git
git config user.email thiagosalaberry99@gmail.com
ls
sudo cp ../Thiago/tp2/UTN-ARQ_SO_Examenes .
ls ../Thiago/
sudo ls ../Thiago/
sudo ls ../Thiago/tp2
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
ls
ls UTN-FRA_SO_Examenes/
ls UTN-FRA_SO_Examenes/202406
ls UTN-FRA_SO_Examenes/202406/bash_script/
cat UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
ls
sudo vim /usr/local/bin/SalaberryAltaUser-Groups.sh 
sudo /usr/local/bin/SalaberryAltaUser-Groups.sh Thiago UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
sudo vim /usr/local/bin/SalaberryAltaUser-Groups.sh 
sudo /usr/local/bin/SalaberryAltaUser-Groups.sh Thiago UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
sudo vim /usr/local/bin/SalaberryAltaUser-Groups.sh 
sudo /usr/local/bin/SalaberryAltaUser-Groups.sh Thiago UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
sudo vim /usr/local/bin/SalaberryAltaUser-Groups.sh 
sudo /usr/local/bin/SalaberryAltaUser-Groups.sh Thiago UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
sudo vim /usr/local/bin/SalaberryAltaUser-Groups.sh 
sudo /usr/local/bin/SalaberryAltaUser-Groups.sh Thiago UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
cat UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
sudo vim /usr/local/bin/SalaberryAltaUser-Groups.sh 
sudo /usr/local/bin/SalaberryAltaUser-Groups.sh Thiago UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
sudo vim /usr/local/bin/SalaberryAltaUser-Groups.sh 
sudo /usr/local/bin/SalaberryAltaUser-Groups.sh Thiago UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
sudo vim /usr/local/bin/SalaberryAltaUser-Groups.sh 
sudo /usr/local/bin/SalaberryAltaUser-Groups.sh Thiago UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
sudo vim /usr/local/bin/SalaberryAltaUser-Groups.sh 
sudo /usr/local/bin/SalaberryAltaUser-Groups.sh Thiago UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
sudo vim /usr/local/bin/SalaberryAltaUser-Groups.sh 
sudo /usr/local/bin/SalaberryAltaUser-Groups.sh Thiago UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
cat UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
sudo vim /usr/local/bin/SalaberryAltaUser-Groups.sh 
cat UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
getent group
cat UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
sudo vim /usr/local/bin/SalaberryAltaUser-Groups.sh 
sudo /usr/local/bin/SalaberryAltaUser-Groups.sh Thiago UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
sudo vim /usr/local/bin/SalaberryAltaUser-Groups.sh 
sudo /usr/local/bin/SalaberryAltaUser-Groups.sh Thiago UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
ls
ls RTA_Examen_20250622/
rm RTA_Examen_20250622/q
ls RTA_Examen_20250622/
sudo vim /usr/local/bin/SalaberryAltaUser-Groups.sh 
getent passwd
getent group
sudo /usr/local/bin/SalaberryAltaUser-Groups.sh Thiago UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
getent passwd
getent group
su 2P_GDesa
getent passwd
su 2P_202406_Prog1
sudo su
ls
cd 
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406/
ls
cd docker/
ls
cat ni
cat index.html 
sudo umount /work
sudo e2fsck -f /dev/vg_datos/lv_workareas
sudo resize2fs /dev/vg_datos/lv_workareas 512M
sudo lvreduce -L 512M /dev/vg_datos/lv_workareas
df -h
sudo lvreduce -L 512M /dev/vg_datos/lv_workareas
sudo lvresize -L 1G /dev/vg_datos/lv_docker
sudo resize2fs /dev/vg_datos/lv_docker
sudo mount /dev/vg_datos/lv_workareas /work
df -h
sudo ls /home/Thiago/facultad
sudo ls /home/Thiago/facultad/UTN-FRA_SO_Docker
sudo ls /home/Thiago/facultad/UTN-FRA_SO_Docker/ejemplo1
sudo cat /home/Thiago/facultad/UTN-FRA_SO_Docker/ejemplo1/run.sh
sudo docker run  -d   -p 80:80 -v "$PWD"/share/html:/usr/share/nginx/html nginx
docker ps
curl localhost:80
ls -l "$PWD"/usr/share/html
ls -l "$PWD"//share/html
ls -l "$PWD"/share/html
ls
ls share/
ls
cat index.html 
sudo docker run  -d   -p 80:80 -v "$PWD"/index.html:/usr/share/nginx/html nginx
docker ps
docker stop 620
sudo docker run  -d   -p 80:80 -v "$PWD"/index.html:/usr/share/nginx/html nginx
ls
ls share/
ls share/html/
cp index.html share/html/index.html
sudo cp index.html share/html/index.html
ls share/html/
cat share/html/index.html 
sudo docker run  -d   -p 80:80 -v "$PWD"/share/html:/usr/share/nginx/html nginx
curl localhost:80
sudo ls /home/Thiago/facultad/UTN-FRA_SO_Docker
sudo ls /home/Thiago/facultad/UTN-FRA_SO_Docker/ejemplo0
sudo ls /home/Thiago/facultad/UTN-FRA_SO_Docker/ejemplo1
sudo ls /home/Thiago/facultad/UTN-FRA_SO_Docker/ejemplo2
sudo cat /home/Thiago/facultad/UTN-FRA_SO_Docker/ejemplo2/dockerfile
ls
mkdir web1-Salaberry
cd web1-Salaberry/
ls
mv ../index.html .
ls
cat index.html 
vim dockerfile
docker build --help
docker build -t web1-Salaberry
cd ..
docker build -t web1-Salaberry
cd web1-Salaberry/
ls
docker build -t web1-Salaberry .
cd ..
docker ps
docker build -t web1-salaberry .
ls
cd web1-Salaberry/
docker build -t web1-salaberry .
docker run -d -p 80:80 web1-salaberry
docker ps
docker stop bf2
docker run -d -p 80:80 web1-salaberry
curl localhost:80
docker image list
docker info | grep Username
docker info 
cat ~/.docker
cat ~/.docker/config.json
ls ~/.docker
cd ..
docker login
vim ~/.docker/config.json
docker login -u thiagoutn
cat ~/.docker/config.json
ls
ls web1-Salaberry/
docker tag --help
cd web1-Salaberry/
ls
pwd
docker tag web1-salaberry thiagoutn/web1-salaberry:latest
docker push thiagoutn/web1-salaberry:latest 
docker run -d -p 80:80 thiagoutn/web1-salaberry:latest 
docker ps
docker stop c49
docker run -d -p 80:80 thiagoutn/web1-salaberry:latest 
curl localhost:80
cd ..
ls
vim run.sh
ll
chmod 774 run.sh 
ll
docker ps 
./run.sh 
curl localhost:8080
./run.sh 
docker stop web1-salaberry
docker ps
./run.sh 
docker ps
docker stop friendly_rosalind
docker ps
vim run.sh 
./run.sh 
docker rm web1-salaberry
./run.sh 
docker ps
docker rm --help
vim run.sh 
docker ps
docker rm web1-salaberry
docker stop web1-salaberry
./run.sh 
curl localhost:8080
docker stop web1-salaberry
curl localhost:8080
cat run.sh 
cd
ls
cd RTA_Examen_20250622/
ls
vim Punto_C.sh 
ls
cat Punto_A.sh 
cat Punto_B.sh 
cp Punto_B.sh Punto_B.sh.bkp
cat <<EOF>> Punto_B.sh

echo "Punto B terminado!"
EOF

cat Punto_B.sh 
rm *.bkp
ls
cat Punto_B.sh 
cat Punto_C.sh 
vim Punto_C.sh 
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
ls
ls roles/
ls roles/2do_parcial/
cat roles/2do_parcial/README.md 
ls
cat ansible.cfg 
cat playbook.yml 
ls
cd roles/
ls
cd 2do_parcial/
ls
ansible --version
ansible-galaxy init crear_dirs
ls
ls crear_dirs/
ls tasks/
cat tasks/main.yml 
ls
rm -rf crear_dirs/
ls
vim tasks/main.yml 
ls
cd ..
ls
cd ..
ls
cat playbook.yml 
ls /tmp/
ll /ttmp/
ll /tmp/
ansible-playbook -i inventory playbook.yml 
ls
ls inventory/
cat inventory/host
ll inventory/
cat inventory/hosts
ls
vim inventory/hosts 
cat inventory/hosts
vim playbook.yml 
cat inventory/hosts
vim playbook.yml 
ansible-playbook -i inventory playbook.yml 
vim roles/2do_parcial/tasks/main.yml 
ansible-playbook -i inventory playbook.yml 
ll /tmp/
ll /tmp/2do_parcial/
ll /tmp/2do_parcial/alumno/
ll /tmp/2do_parcial/equipo/
ls
vim playbook.yml 
ls
ls roles/2do_parcial/
ls
ls roles/2do_parcial/
mkdir roles/2do_parcial/templates
vim roles/2do_parcial/templates/datos_alumno.txt.j2
vim roles/2do_parcial/templates/datos_equipo.txt.j2
ls
vim playbook.yml 
vim roles/2do_parcial/tasks/main.yml 
ls
ls inventory/
ls -R inventory/
ls
ls roles/2do_parcial/vars/
cat roles/2do_parcial/vars/main.yml 
vim roles/2do_parcial/vars/main.yml 
pw
pwd
ansible-playbook -i inventory/hosts playbook.yml 
ls /tmp/2do_parcial/
ls -R /tmp/2do_parcial/
cat -R /tmp/2do_parcial/
cat -R /tmp/2do_parcial/*/*.txt
cat  /tmp/2do_parcial/*/*.txt
vim roles/2do_parcial/templates/datos_alumno.txt.j2 
ansible-playbook -i inventory/hosts playbook.yml 
cat /tmp/2do_parcial/alumno/datos_alumno.txt 
vim roles/2do_parcial/tasks/main.yml 
sudo lst /etc/sudoers.d/
sudo ls /etc/sudoers.d/
ansible-playbook -i inventory/hosts playbook.yml 
sudo ls /etc/sudoers.d/
sudo cat /etc/sudoers.d/2PSupervisores 
sudo cat /etc/sudoers.d/tsalaberry 
vim roles/2do_parcial/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml 
sudo cat /etc/sudoers.d/2PSupervisores 
sudo cat /etc/sudoers.d/tsalaberry 
sudo cat /etc/sudoers.d/Thiago 
vim roles/2do_parcial/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml 
sudo cat /etc/sudoers.d/2PSupervisores 
cd
cd RTA_Examen_20250622/
ls
vim Punto_D.sh 
cat Punto_A.sh 
cat Punto_C.sh 
vim Punto_D.sh 
ls
alias carpeta='~/UTN-FRA_SO_Examenes/202406'
ls carpeta
carpeta="~/UTN-FRA_SO_Examenes/202406"
ls carpeta
ls $carpeta
carpeta="~/UTN-FRA_SO_Examenes/202406/"
ls $carpeta
ls "$carpeta"
ls ~/UTN-FRA_SO_Examenes/202406/
carpeta="~/UTN-FRA_SO_Examenes/202406/"
ls $carpeta
carpeta="/home/tsalaberry/UTN-FRA_SO_Examenes/202406/"
ls "$carpeta"
ls "$carpeta/ansible"
cat $carpeta/ansible/playbook.yml
vim Punto_D.sh 
ls $carpeta/ansible
cat $carpeta/ansible/ansible.cfg 
cat $carpeta/ansible/inventory/hsots
cat $carpeta/ansible/inventory/hosts
ls $carpeta/ansible
ls $carpeta/ansible/roles/2do_parcial
ls $carpeta/ansible/roles/2do_parcial/tasks
cat $carpeta/ansible/roles/2do_parcial/tasks/main.yml 
vim Punto_D.sh 
cat $carpeta/ansible/playbook.yml 
vim Punto_D.sh 
cat $carpeta/ansible/roles/2do_parcial/vars/main.yml 
vim Punto_D.sh 
cat $carpeta/ansible/roles/2do_parcial/templates/datos_alumno.txt.j2 
vim Punto_D.sh 
cat $carpeta/ansible/roles/2do_parcial/templates/datos_equipo.txt.j2
vim Punto_D.sh 
cd $carpeta/ansible/
ansible-playbook -i inventory/hosts playbook.yml 
cd
cd RTA_Examen_20250622/
vim Punto_D.sh 
cat /tmp/2do_parcial/*/*.txt
vim Punto_D.sh 
ls
cat Punto_*.sh
cd
ls
git clone git@github.com:thiagoSalaberry/UTNFRA_SO_2do_TP_Salaberry.git
cat ~/.ssh/*.pub
git clone git@github.com:thiagoSalaberry/UTNFRA_SO_2do_TP_Salaberry.git
sudo git clone git@github.com:thiagoSalaberry/UTNFRA_SO_2do_TP_Salaberry.git
git clone https://github.com/thiagoSalaberry/UTNFRA_SO_2do_TP_Salaberry.git
ls
cd UTNFRA_SO_2do_TP_Salaberry/
ls
pwd
ls
cat README.md 
cp ../UTN-FRA_SO_Examenes/202406/ .
cp -r ../UTN-FRA_SO_Examenes/202406/ .
ls
ls 202406/
ls 202406/ansible/
cat 202406/ansible/roles/2do_parcial/vars/main.yml 
cp -r ../RTA_Examen_20250622/ .
ls
ls RTA_Examen_20250622/
ls
cat RTA_Examen_20250622/Punto_A.sh 
cat RTA_Examen_20250622/Punto_B.sh 
cat RTA_Examen_20250622/Punto_C.sh 
cat RTA_Examen_20250622/Punto_D.sh 
cat RTA_Examen_20250622/SalaberryAltaUser-Groups.sh 
cat $HOME/.bash_history 
cat $HOME/.bash_history  | head
cat $HOME/.bash_history  | head -n 50
history -a
cat $HOME/.bash_history 
