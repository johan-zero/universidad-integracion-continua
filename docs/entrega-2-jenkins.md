# Entrega 2 - Integracion Continua con Jenkins

## Control de alcance academico

Este documento corresponde exclusivamente a la materia Enfasis Profesional I - Integracion Continua. La Entrega 2 da continuidad al repositorio y al ambiente Docker construido en la Entrega 1, incorporando Jenkins como herramienta de automatizacion y gestion de operaciones.

## 1. Proposito de la entrega

El objetivo de esta entrega es instalar, configurar y explorar Jenkins, creando una tarea de automatizacion que permita ejecutar un flujo basico de integracion continua sobre el proyecto existente.

El flujo propuesto conserva el trabajo anterior: repositorio GitHub, contenedores Docker y validacion de comunicacion entre servicios. Jenkins se incorpora como gestor de operaciones para ejecutar de forma ordenada las etapas de validacion del proyecto.

## 2. Relacion con el feedback del profesor

De acuerdo con las sesiones sincronicas, el profesor indico que la actividad no debe quedarse solo en una explicacion teorica. Es necesario instalar Jenkins, explorar la herramienta, revisar los plugins, crear una tarea y evidenciar como la herramienta se integra con el proyecto.

Tambien se recordo que el proyecto final sera un consolidado de lo construido durante el modulo: GitHub, Docker, contenedores y Jenkins. Por este motivo, los archivos de la Entrega 1 se conservan y la Entrega 2 se construye sobre el mismo repositorio.

## 3. Componentes agregados al repositorio

| Archivo | Proposito |
|---|---|
| `docker-compose.jenkins.yml` | Permite levantar Jenkins en un contenedor Docker conectado a la red del proyecto. |
| `Jenkinsfile` | Define el pipeline de Jenkins para construir contenedores, iniciar el ambiente y validar comunicacion. |
| `docs/entrega-2-jenkins.md` | Documento tecnico de la Entrega 2. |

## 4. Arquitectura de la solucion

La solucion queda organizada de la siguiente forma:

```text
GitHub Repository
   |
   |-- docker-compose.yml
   |      |-- servidor-web
   |      |-- cliente-pruebas
   |
   |-- docker-compose.jenkins.yml
   |      |-- jenkins
   |
   |-- Jenkinsfile
          |-- validar repositorio
          |-- construir contenedores
          |-- iniciar ambiente
          |-- validar comunicacion
```

## 5. Ejecucion de Jenkins

Antes de iniciar Jenkins, se debe crear o levantar la red del proyecto. El archivo `docker-compose.yml` ya define la red con nombre `red-integracion`.

### 5.1. Construir y levantar el ambiente base

```bash
docker compose up -d
```

### 5.2. Levantar Jenkins

```bash
docker compose -f docker-compose.jenkins.yml up -d
```

### 5.3. Consultar la contrasena inicial de Jenkins

```bash
docker exec entrega2-jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

### 5.4. Abrir Jenkins en el navegador

```text
http://localhost:9090
```

## 6. Configuracion inicial de Jenkins

El proceso esperado es:

1. Ingresar a `http://localhost:9090`.
2. Copiar la contrasena inicial generada por Jenkins.
3. Seleccionar la instalacion de plugins sugeridos.
4. Crear el usuario administrador.
5. Confirmar la URL de Jenkins.
6. Crear una nueva tarea tipo Pipeline.
7. Asociar el pipeline al repositorio GitHub.
8. Ejecutar el pipeline y revisar la salida de consola.

## 7. Pipeline propuesto

El archivo `Jenkinsfile` define las siguientes etapas:

| Etapa | Descripcion |
|---|---|
| Validar repositorio | Confirma que Jenkins puede acceder al proyecto. |
| Construir contenedores Docker | Ejecuta `docker compose build`. |
| Iniciar ambiente Docker | Ejecuta `docker compose up -d` y `docker compose ps`. |
| Validar comunicacion | Ejecuta el script de validacion entre contenedores. |

## 8. Evidencias esperadas

Para documentar correctamente la Entrega 2 se deben incluir capturas de:

1. Repositorio GitHub con `Jenkinsfile` y `docker-compose.jenkins.yml`.
2. Jenkins ejecutando en `http://localhost:9090`.
3. Pantalla de instalacion de plugins sugeridos.
4. Creacion del usuario administrador.
5. Creacion de una tarea tipo Pipeline.
6. Configuracion del pipeline apuntando al repositorio GitHub.
7. Ejecucion del pipeline.
8. Consola de Jenkins con las etapas ejecutadas.
9. Resultado de validacion de comunicacion entre contenedores.

## 9. Criterios de calidad aplicados

Aunque la rubrica cargada corresponde a otro contexto academico, se toma como criterio transversal la necesidad de documentar con claridad: instalacion, configuracion, conectividad, evidencias y organizacion del documento.

Para esta entrega se aplican los siguientes criterios:

- Evidencias claras y legibles.
- Separacion entre teoria, procedimiento y resultados.
- Relacion directa con GitHub, Docker y Jenkins.
- Reutilizacion del proyecto construido en la Entrega 1.
- Documentacion suficiente para replicar la instalacion.

## 10. Conclusiones

- Jenkins permite automatizar el proceso de construccion y validacion del proyecto.
- La Entrega 2 amplija la Entrega 1 sin reemplazarla, manteniendo la trazabilidad del modulo.
- El pipeline documentado permite validar la construccion de contenedores y la comunicacion entre servicios.
- La integracion de GitHub, Docker y Jenkins fortalece el flujo de integracion continua solicitado para el proyecto.
