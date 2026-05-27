# Informe Entrega 1 - Proyecto de software basado en herramientas de integracion continua

## 1. Introduccion

La presente entrega corresponde al primer avance del proyecto del modulo Integracion Continua. El objetivo principal es crear un proyecto de software alojado en GitHub y configurar un ambiente inicial basado en Docker, compuesto por dos contenedores comunicados entre si.

El proyecto permite demostrar el uso de repositorios, control de versiones, documentacion tecnica, construccion de ambientes reproducibles y validacion de comunicacion entre servicios mediante contenedores.

## 2. Objetivo general

Crear un proyecto en GitHub y configurar dos contenedores Docker comunicados entre si, evidenciando la aplicacion inicial de herramientas utilizadas en procesos de integracion continua.

## 3. Objetivos especificos

- Crear un repositorio en GitHub para alojar el proyecto.
- Definir una estructura organizada del repositorio.
- Configurar Docker Compose para administrar dos servicios.
- Construir un contenedor servidor web y un contenedor cliente de pruebas.
- Validar la comunicacion interna entre los contenedores.
- Documentar comandos, resultados y evidencias de ejecucion.

## 4. Alcance de la Entrega 1

La Entrega 1 se enfoca en el uso inicial de GitHub y Docker. En esta etapa no se implementa Jenkins, Travis CI ni Codeship como componentes principales del proyecto, debido a que esas herramientas corresponden a entregas posteriores del modulo.

El alcance desarrollado incluye:

1. Repositorio publicado en GitHub.
2. Estructura base de proyecto documentada.
3. Dos contenedores definidos con Docker Compose.
4. Red Docker compartida para comunicacion interna.
5. Script de validacion desde un contenedor hacia otro.
6. Documentacion de comandos y evidencias requeridas.

## 5. Herramientas utilizadas

| Herramienta | Uso dentro del proyecto |
|---|---|
| GitHub | Alojamiento del repositorio, trazabilidad y control del proyecto. |
| Git | Control de versiones local y sincronizacion con GitHub. |
| Docker | Construccion y ejecucion de contenedores. |
| Docker Compose | Orquestacion de los dos servicios definidos. |
| Nginx | Servidor web usado en el contenedor principal. |
| Alpine Linux | Imagen base para el cliente de pruebas. |
| GitHub Actions | Validacion automatica basica del flujo Docker. |

## 6. Descripcion tecnica de la solucion

El ambiente se compone de dos contenedores conectados por una red tipo bridge creada por Docker Compose.

| Servicio | Contenedor | Funcion |
|---|---|---|
| servidor-web | entrega1-servidor-web | Publica una pagina HTML simple mediante Nginx. |
| cliente-pruebas | entrega1-cliente-pruebas | Ejecuta comandos de validacion para confirmar comunicacion con el servidor. |

El cliente se comunica con el servidor usando el nombre del servicio `servidor-web`, lo cual demuestra resolucion interna de nombres dentro de la red Docker.

## 7. Estructura del repositorio

```text
.
├── README.md
├── .gitignore
├── docker-compose.yml
├── servidor-web/
│   ├── Dockerfile
│   ├── .dockerignore
│   └── index.html
├── cliente-pruebas/
│   ├── Dockerfile
│   ├── .dockerignore
│   └── validar_comunicacion.sh
├── docs/
│   ├── informe-entrega-1.md
│   ├── comandos-validacion.md
│   ├── bitacora-trabajo.md
│   └── evidencias/
│       └── README.md
└── .github/
    └── workflows/
        └── docker-validacion.yml
```

## 8. Procedimiento realizado

1. Se creo el repositorio `universidad-integracion-continua` en GitHub.
2. Se agrego un README principal con descripcion, estructura y comandos de ejecucion.
3. Se agrego el archivo `.gitignore` para excluir archivos temporales y locales.
4. Se creo el archivo `docker-compose.yml` con dos servicios.
5. Se definio el Dockerfile del servidor web basado en Nginx.
6. Se agrego una pagina HTML simple para comprobar el servicio web.
7. Se definio el Dockerfile del cliente de pruebas basado en Alpine Linux.
8. Se agrego un script para validar comunicacion mediante ping y solicitud HTTP.
9. Se documento la bitacora y los comandos de validacion.
10. Se agrego un workflow basico de GitHub Actions para validar el flujo Docker.

## 9. Comandos de ejecucion y validacion

Los comandos que deben ejecutarse desde la raiz del repositorio son:

```bash
docker compose build
```

```bash
docker compose up -d
```

```bash
docker compose ps
```

```bash
docker compose exec cliente-pruebas validar_comunicacion.sh
```

```bash
docker compose down
```

Adicionalmente, el servicio web puede revisarse en el navegador en:

```text
http://localhost:8080
```

## 10. Evidencias requeridas para anexar

| Evidencia | Descripcion | Estado |
|---|---|---|
| Captura 1 | Repositorio publicado en GitHub. | Pendiente de insertar en documento final. |
| Captura 2 | Estructura de archivos del repositorio. | Pendiente de insertar en documento final. |
| Captura 3 | Ejecucion de `docker compose build`. | Pendiente de ejecutar localmente. |
| Captura 4 | Ejecucion de `docker compose up -d`. | Pendiente de ejecutar localmente. |
| Captura 5 | Resultado de `docker compose ps`. | Pendiente de ejecutar localmente. |
| Captura 6 | Resultado de `docker compose exec cliente-pruebas validar_comunicacion.sh`. | Pendiente de ejecutar localmente. |
| Captura 7 | Navegador mostrando `http://localhost:8080`. | Pendiente de ejecutar localmente. |

## 11. Resultados esperados

Al ejecutar el ambiente, se espera que Docker construya correctamente las imagenes, inicie ambos contenedores y permita que el contenedor `cliente-pruebas` se comunique con `servidor-web`. La validacion debe mostrar respuesta positiva tanto para la prueba de red como para la solicitud HTTP.

## 12. Conclusiones

- GitHub permite centralizar el proyecto y conservar trazabilidad de los cambios realizados.
- Docker facilita la construccion de ambientes aislados, reproducibles y portables.
- Docker Compose simplifica la ejecucion coordinada de multiples contenedores.
- La comunicacion entre contenedores demuestra que los servicios pueden integrarse dentro de una red comun.
- La estructura del repositorio facilita la revision academica y prepara la base para integrar herramientas adicionales en entregas posteriores.
