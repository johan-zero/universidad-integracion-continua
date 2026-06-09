# Universidad - Integracion Continua

Repositorio academico del modulo **Enfasis Profesional I - Integracion Continua**.

> **Control de alcance:** este repositorio corresponde exclusivamente a la materia de Integracion Continua. El contenido, la documentacion y las evidencias estan orientados a GitHub, Docker, Jenkins y comunicacion entre herramientas del flujo CI.

## Descripcion del proyecto

El proyecto se desarrolla por entregas incrementales. La Entrega 1 incorporo GitHub y Docker para crear dos contenedores comunicados entre si. La Entrega 2 incorpora Jenkins como gestor de operaciones para automatizar la validacion del ambiente Docker.

## Componentes implementados

| Entrega | Herramienta principal | Resultado tecnico |
|---|---|---|
| Entrega 1 | GitHub + Docker | Repositorio, dos contenedores y red Docker compartida. |
| Entrega 2 | Jenkins | Pipeline para construir contenedores y validar comunicacion. |

## Estructura del repositorio

```text
.
├── README.md
├── Jenkinsfile
├── docker-compose.yml
├── docker-compose.jenkins.yml
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
│   ├── evidencias/
│   │   └── README.md
│   └── entrega-2/
│       ├── README.md
│       └── guia-instalacion-jenkins.md
└── .github/
    └── workflows/
        └── docker-validacion.yml
```

## Ejecucion Entrega 1 - Docker

```bash
docker compose build
docker compose up -d
docker compose ps
docker compose exec cliente-pruebas validar_comunicacion.sh
```

El servicio web queda disponible en:

```text
http://localhost:8080
```

## Ejecucion Entrega 2 - Jenkins

Primero iniciar el ambiente base de Docker:

```bash
docker compose up -d
```

Luego iniciar Jenkins:

```bash
docker compose -f docker-compose.jenkins.yml up -d
```

Jenkins queda disponible en:

```text
http://localhost:9090
```

El pipeline se define en el archivo `Jenkinsfile` y ejecuta las etapas de validacion del repositorio, construccion de contenedores, inicio del ambiente y validacion de comunicacion.

## Resultado esperado

La Entrega 2 debe demostrar que Jenkins puede ejecutar un flujo basico de integracion continua sobre el proyecto ya construido en la Entrega 1, conservando el caracter incremental del modulo.
