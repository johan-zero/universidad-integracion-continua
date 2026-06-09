# Guia de instalacion y configuracion de Jenkins

## Objetivo

Desplegar Jenkins como gestor de operaciones para automatizar la validacion del proyecto de Integracion Continua.

## Requisitos

- Docker Desktop instalado.
- Repositorio clonado localmente.
- Ambiente de la Entrega 1 disponible.

## Preparar el ambiente de la Entrega 1

Desde la raiz del repositorio ejecutar:

`docker compose up -d`

Este comando levanta los servicios de la Entrega 1 y crea la red Docker compartida.

## Desplegar Jenkins

Ejecutar:

`docker compose -f docker-compose.jenkins.yml up -d`

Jenkins queda disponible en:

`http://localhost:9090`

Se usa el puerto 9090 para evitar conflicto con el puerto 8080 usado por el servidor web de la Entrega 1.

## Configuracion inicial

Al ingresar por primera vez, Jenkins solicita desbloqueo inicial, instalacion de plugins y creacion de usuario administrador. Se recomienda instalar los plugins sugeridos y validar que esten disponibles Git, Pipeline, Docker Pipeline y GitHub.

## Crear tarea Pipeline

1. Seleccionar Nueva tarea.
2. Nombre sugerido: `entrega2-validacion-docker`.
3. Tipo: Pipeline.
4. Origen: repositorio GitHub del proyecto.
5. Rama: `main`.
6. Script: `Jenkinsfile`.

## Ejecutar validacion

El pipeline debe recorrer estas etapas:

1. Validar repositorio.
2. Construir contenedores Docker.
3. Iniciar ambiente Docker.
4. Validar comunicacion entre contenedores.

## Resultado esperado

Jenkins debe ejecutar el flujo definido en el `Jenkinsfile` y demostrar que el proyecto puede ser validado automaticamente desde el repositorio.
