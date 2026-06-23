# Entrega final - Integracion Continua

## Objetivo de la sustentacion

La entrega final consolida el proyecto desarrollado durante el modulo. Debe demostrar, mediante un video de sustentacion y un documento de soporte, la integracion progresiva de GitHub, Docker, Jenkins y Travis CI, junto con el historial de cambios, las decisiones tecnicas, los hallazgos y las responsabilidades del equipo.

## Estado de la solucion

| Componente | Evidencia en repositorio | Estado verificable |
|---|---|---|
| GitHub | Repositorio, commits, README y documentacion | Disponible |
| Docker | `docker-compose.yml`, Dockerfiles y script de validacion | Disponible |
| Jenkins | `docker-compose.jenkins.yml` y `Jenkinsfile` | Disponible; requiere ejecucion local para evidencia runtime |
| Travis CI | `.travis.yml` | Configuracion versionada; requiere activacion en Travis para evidencia runtime |
| CodeShip | Ver nota de disponibilidad | Sin evidencia de ejecucion; no debe presentarse como integrado hasta contar con acceso operativo |

## Correcciones aplicadas a partir de la segunda entrega

La retroalimentacion recibida se incorporara explicitamente en la sustentacion y en el documento final:

1. Se detallan requisitos de Jenkins desde infraestructura, software, dependencias, plugins y seguridad.
2. Se conserva una implementacion concreta de Jenkins mediante contenedor y pipeline versionado.
3. Cada figura o captura debe llevar titulo, explicacion y fuente.
4. El documento se presenta con portada, estructura numerada, redaccion revisada y referencias en formato APA.

## Estructura recomendada del documento final

1. Portada.
2. Resumen ejecutivo.
3. Objetivo y alcance.
4. Arquitectura integrada de la solucion.
5. Requisitos de Jenkins y justificacion de la implementacion.
6. Integracion GitHub, Docker, Jenkins y Travis CI.
7. Trazabilidad: historial de cambios, incidencias y decisiones.
8. Responsabilidades y aportes del equipo.
9. Evidencias de ejecucion.
10. Conclusiones y recomendaciones.
11. Referencias.

## Evidencia minima para el video

1. Repositorio GitHub y estructura del proyecto.
2. Contenedores Docker activos y prueba de comunicacion.
3. Jenkins instalado, tarea Pipeline creada y consola de ejecucion.
4. Archivo `.travis.yml` y activacion del repositorio en Travis CI.
5. Build de Travis con resultado visible.
6. Historial de commits, rama o pull request.
7. Participacion de todos los integrantes.

## Restriccion de veracidad

Solo deben incluirse como resultados aquellos que puedan mostrarse en pantalla. La configuracion versionada puede presentarse como implementada; una ejecucion de Jenkins, Travis o CodeShip solo puede describirse como exitosa si existe evidencia visible de la consola o plataforma correspondiente.
