# Entrega 2 - Integracion Continua con Jenkins

## Proposito

Esta entrega documenta la incorporacion de Jenkins al proyecto de Integracion Continua. El entregable se presenta como una unidad independiente: contiene su objetivo, arquitectura, implementacion, comandos, evidencias y criterios de validacion. Sin embargo, conserva la trazabilidad tecnica de la Entrega 1, donde ya se habia construido el repositorio GitHub y el ambiente Docker con servicios comunicados entre si.

## Alcance funcional

La Entrega 2 implementa Jenkins como gestor de automatizacion para ejecutar un flujo basico de integracion continua sobre el proyecto existente. La solucion no reemplaza los contenedores de la Entrega 1; los toma como base verificable y agrega una capa de orquestacion mediante pipeline.

El alcance queda definido en cuatro resultados:

1. Despliegue de Jenkins en Docker.
2. Publicacion de un `Jenkinsfile` versionado en GitHub.
3. Definicion de etapas de pipeline para construir, iniciar y validar el ambiente Docker.
4. Documentacion de la arquitectura y del procedimiento de ejecucion.

## Alineacion con las sesiones del profesor

En la sesion del 25 de mayo se indico que Jenkins debia instalarse, configurarse y explorarse como herramienta, incluyendo plugins, usuario inicial y creacion de tareas. En la sesion del 8 de junio se reforzo que el proyecto debe integrar progresivamente GitHub, Docker, Jenkins y las demas herramientas del modulo, conservando lo construido porque el cierre del curso consolida todo el proceso.

## Arquitectura propuesta

La solucion queda organizada en tres capas:

| Capa | Componente | Funcion |
|---|---|---|
| Repositorio | GitHub | Aloja el codigo, la documentacion y el `Jenkinsfile`. |
| Automatizacion | Jenkins | Ejecuta el pipeline de validacion. |
| Contenedores | Docker Compose | Construye los servicios y valida su comunicacion interna. |

```text
Usuario / Profesor
      |
      v
Repositorio GitHub
      |-- Jenkinsfile
      |-- docker-compose.yml
      |-- docker-compose.jenkins.yml
      |
      v
Jenkins Pipeline
      |-- Validar repositorio
      |-- Construir contenedores
      |-- Iniciar ambiente
      |-- Validar comunicacion
      |
      v
Docker Compose
      |-- servidor-web
      |-- cliente-pruebas
      |-- red-integracion
```

## Implementacion realizada

### Jenkins en Docker

Se agrego `docker-compose.jenkins.yml` para ejecutar Jenkins como contenedor. El servicio publica Jenkins en el puerto local `9090`, evitando conflicto con el servidor web de la Entrega 1 que usa `8080`. Jenkins se conecta a la red `red-integracion`, lo que permite mantener coherencia con el ambiente Docker ya definido.

### Pipeline en Jenkinsfile

Se agrego un `Jenkinsfile` declarativo en la raiz del repositorio. Esta decision es consistente con la practica recomendada por Jenkins: versionar el pipeline en control de codigo para mantener trazabilidad, revision y una fuente unica de verdad del flujo de automatizacion.

Las etapas definidas son:

| Etapa | Comando principal | Resultado esperado |
|---|---|---|
| Validar repositorio | `pwd`, `ls -la` | Confirmar que Jenkins trabaja sobre el proyecto. |
| Construir contenedores | `docker compose build` | Construir las imagenes Docker. |
| Iniciar ambiente | `docker compose up -d` | Levantar los servicios definidos. |
| Validar comunicacion | `docker compose exec -T cliente-pruebas validar_comunicacion.sh` | Comprobar comunicacion entre contenedores. |

## Procedimiento de ejecucion

Desde la raiz del repositorio:

```bash
docker compose up -d
```

Luego iniciar Jenkins:

```bash
docker compose -f docker-compose.jenkins.yml up -d
```

Consultar la contrasena inicial:

```bash
docker exec entrega2-jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

Abrir Jenkins:

```text
http://localhost:9090
```

Crear una tarea tipo Pipeline, asociarla al repositorio GitHub y usar el archivo `Jenkinsfile` como definicion del flujo.

## Evidencias requeridas

El documento final debe evidenciar:

1. Repositorio GitHub con `Jenkinsfile` y `docker-compose.jenkins.yml`.
2. Arquitectura de la solucion Jenkins + GitHub + Docker.
3. Definicion del servicio Jenkins en Docker Compose.
4. Etapas declaradas en el `Jenkinsfile`.
5. Comandos de ejecucion de Jenkins.
6. Resultado esperado del pipeline.

## Justificacion tecnica

Docker Compose permite declarar servicios y sus parametros de ejecucion en archivos YAML. Las redes de Compose permiten que los servicios se comuniquen entre si y sean localizables por nombre de servicio. Jenkins, por su parte, permite definir pipelines versionados en un `Jenkinsfile`, lo cual aporta trazabilidad, revision y consistencia del flujo de integracion continua.

## Conclusiones

- La Entrega 2 incorpora Jenkins sin perder la base tecnica creada en la Entrega 1.
- La arquitectura separa correctamente repositorio, automatizacion y contenedores.
- El pipeline propuesto permite validar de forma automatizada la construccion y comunicacion de los servicios Docker.
- La documentacion queda preparada para la sustentacion final, donde se debera explicar el recorrido GitHub - Docker - Jenkins.

## Referencias

- Docker. (s. f.). Compose file reference: Services. https://docs.docker.com/reference/compose-file/services/
- Docker. (s. f.). Compose file reference: Networks. https://docs.docker.com/reference/compose-file/networks/
- Jenkins. (s. f.). Using a Jenkinsfile. https://www.jenkins.io/doc/book/pipeline/jenkinsfile/
- Jenkins. (s. f.). Installing Jenkins using Docker. https://www.jenkins.io/doc/book/installing/docker/
- GitHub Docs. (s. f.). About READMEs. https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes
