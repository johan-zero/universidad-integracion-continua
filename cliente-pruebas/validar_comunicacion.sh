#!/bin/sh
set -eu

echo "Validando comunicación entre contenedores..."
echo "Destino: servidor-web"

echo "1. Prueba ICMP con ping"
ping -c 3 servidor-web

echo "2. Prueba HTTP con curl"
curl -f http://servidor-web

echo "Comunicación validada correctamente."
