# Universidad - Integración Continua

Repositorio académico para la **Entrega 1** del módulo **Énfasis Profesional I - Integración Continua**.

## Descripción del proyecto

El objetivo de esta entrega es crear un proyecto de software alojado en GitHub y configurar un ambiente con Docker compuesto por **dos contenedores comunicados entre sí**.

La solución implementada usa Docker Compose para levantar los siguientes servicios:

| Servicio | Contenedor | Descripción |
|---|---|---|
| `servidor-web` | `entrega1-servidor-web` | Servidor Nginx que publica una página HTML simple en el puerto `8080`. |
| `cliente-pruebas` | `entrega1-cliente-pruebas` | Contenedor Alpine usado para validar la comunicación con el servidor mediante `ping` y `curl`. |

## Estructura del repositorio

```text
.
├── README.md
├── docker-compose.yml
├── .gitignore
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

## Requisitos previos

Para ejecutar el proyecto se requiere tener instalado:

- Docker Desktop.
- Git.
- GitHub Desktop o terminal Git.

## Ejecución del proyecto

Desde la raíz del repositorio, ejecutar:

```bash
docker compose build
```

Luego iniciar los contenedores:

```bash
docker compose up -d
```

Verificar que los contenedores estén activos:

```bash
docker compose ps
```

Validar la comunicación entre contenedores:

```bash
docker compose exec cliente-pruebas validar_comunicacion.sh
```

Abrir la aplicación web en el navegador:

```text
http://localhost:8080
```

## Resultado esperado

La prueba debe confirmar que el contenedor `cliente-pruebas` logra comunicarse con el contenedor `servidor-web` usando el nombre del servicio dentro de la red Docker.

## Limpieza del ambiente

Para detener y eliminar los contenedores creados:

```bash
docker compose down
```

## Alcance de la Entrega 1

Esta primera entrega se centra en:

1. Creación del proyecto en GitHub.
2. Configuración de Docker.
3. Construcción de dos contenedores.
4. Comunicación entre los contenedores.
5. Documentación de evidencias técnicas.

Las herramientas Jenkins, Travis CI y Codeship corresponden a las siguientes entregas del módulo.
