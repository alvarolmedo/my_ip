#!/bin/bash

#curl -s https://ipinfo.io/ | jq .city,.ip
#curl -s $IP_URL | jq .city,.ip
if [ $1 == "-h" -o $1 == "--help" ];then
	echo "Este contenedor hace una consulta a una API y saca información de tu IP pública."
	echo "Puedes personalizar la petición la URL del servicio vía variable de entorno."
	echo "Puedes personalizar la salida, por defecto esto es lo que obtienes del API consultado ($IP_URL):"
	curl -s $IP_URL
else
	curl -s $IP_URL | jq $1
fi

