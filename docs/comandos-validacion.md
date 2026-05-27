# Comandos de validacion - Entrega 1

Este documento reune los comandos necesarios para construir, ejecutar y validar el proyecto Docker de la Entrega 1.

## Construccion de imagenes

Comando:

docker compose build

Este comando construye las imagenes definidas para los servicios servidor-web y cliente-pruebas.

## Inicio de contenedores

Comando:

docker compose up -d

Este comando inicia los contenedores en segundo plano.

## Verificacion de estado

Comando:

docker compose ps

El resultado esperado es que los servicios aparezcan activos.

## Validacion de comunicacion interna

Comando:

docker compose exec cliente-pruebas validar_comunicacion.sh

El script realiza dos pruebas: ping desde cliente-pruebas hacia servidor-web y solicitud HTTP desde cliente-pruebas hacia servidor-web.

## Validacion desde navegador

Abrir en el navegador:

http://localhost:8080

## Detener ambiente

Comando:

docker compose down
