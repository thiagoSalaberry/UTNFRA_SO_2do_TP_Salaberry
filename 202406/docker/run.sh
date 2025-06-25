#!/bin/bash

# Le asignamos un nombre al contenedor para que docker no le asigne uno random cada vez
container_name="web1-salaberry"

# Paramos otro contenedor que pueda estar corriendo. -f fuerza la detención
docker rm -f "$container_name"

docker run -d --name "$container_name" -p 8080:80 thiagoutn/web1-salaberry
