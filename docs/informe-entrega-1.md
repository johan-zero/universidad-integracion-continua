# Informe Entrega 1 - Proyecto de software basado en herramientas de integracion continua

## 1. Introduccion

La presente entrega corresponde al primer avance del proyecto del modulo Integracion Continua. El objetivo principal es crear un proyecto de software alojado en GitHub y configurar un ambiente inicial basado en Docker, compuesto por dos contenedores comunicados entre si.

El proyecto permite demostrar el uso de repositorios, control de versiones, documentacion tecnica y construccion de ambientes mediante contenedores.

## 2. Objetivo general

Crear un proyecto en GitHub y configurar dos contenedores Docker comunicados entre si, evidenciando la aplicacion inicial de herramientas utilizadas en procesos de integracion continua.

## 3. Objetivos especificos

- Crear un repositorio en GitHub para alojar el proyecto.
- Definir una estructura organizada del repositorio.
- Configurar Docker Compose para administrar dos servicios.
- Construir un contenedor servidor web y un contenedor cliente de pruebas.
- Validar la comunicacion interna entre los contenedores.
- Documentar comandos, resultados y evidencias de ejecucion.

## 4. Herramientas utilizadas

| Herramienta | Uso dentro del proyecto |
|---|---|
| GitHub | Alojamiento del repositorio y trazabilidad del proyecto. |
| Git | Control de versiones local. |
| Docker | Construccion y ejecucion de contenedores. |
| Docker Compose | Orquestacion de los dos servicios definidos. |
| Nginx | Servidor web usado en el contenedor principal. |
| Alpine Linux | Imagen base para el cliente de pruebas. |

## 5. Descripcion tecnica

El ambiente se compone de dos contenedores conectados por una red tipo bridge creada por Docker Compose.

| Servicio | Funcion |
|---|---|
| servidor-web | Publica una pagina HTML simple mediante Nginx. |
| cliente-pruebas | Ejecuta comandos de validacion para confirmar comunicacion con el servidor. |

El cliente se comunica con el servidor usando el nombre del servicio `servidor-web`, lo cual demuestra resolucion interna de nombres dentro de la red Docker.

## 6. Procedimiento realizado

1. Se creo el repositorio en GitHub.
2. Se agrego una estructura organizada de carpetas.
3. Se creo el archivo `docker-compose.yml`.
4. Se definio el Dockerfile del servidor web.
5. Se definio el Dockerfile del cliente de pruebas.
6. Se agrego un script para validar comunicacion.
7. Se documentaron los comandos de ejecucion.
8. Se preparo la carpeta de evidencias.

## 7. Validacion esperada

La comunicacion se valida mediante el script `validar_comunicacion.sh`, el cual realiza pruebas de red y acceso HTTP desde el contenedor cliente hacia el servidor web.

## 8. Conclusiones

- GitHub permite centralizar el proyecto y conservar trazabilidad de los cambios realizados.
- Docker facilita la construccion de ambientes aislados y reproducibles.
- Docker Compose simplifica la ejecucion de multiples contenedores relacionados.
- La comunicacion entre contenedores demuestra que los servicios pueden integrarse dentro de una red comun.
- Esta primera entrega establece la base tecnica para las siguientes fases del proyecto, donde se integraran herramientas adicionales de automatizacion.
