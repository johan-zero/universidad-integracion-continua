# Roles, trazabilidad y decisiones del equipo

> Completar los nombres reales de los integrantes antes de la entrega y la grabación.

## Responsabilidades

| Integrante | Rol asignado | Aporte verificable |
|---|---|---|
| Johan Sebastian Rodríguez | Integración y documentación técnica | Repositorio, Docker, Jenkins, Travis CI y documento final. |
| [Integrante 2] | Ejecución Docker | Validación de contenedores y capturas de comunicación. |
| [Integrante 3] | Configuración Jenkins | Dashboard, plugins, pipeline y consola de ejecución. |
| [Integrante 4] | Configuración Travis CI | Activación del repositorio, build y captura de logs. |
| [Integrante 5] | Evidencias y sustentación | Consolidación de figuras, revisión de APA y participación en video. |

## Trazabilidad de implementaciones

| Fase | Decisión o cambio | Justificación | Evidencia |
|---|---|---|---|
| Entrega 1 | Crear dos contenedores conectados por Docker Compose. | Cumplir la validación de comunicación entre servicios. | `docker-compose.yml` y script de prueba. |
| Entrega 2 | Agregar Jenkins y pipeline versionado. | Automatizar la construcción y la prueba definida en la Entrega 1. | `Jenkinsfile` y `docker-compose.jenkins.yml`. |
| Retroalimentación Entrega 2 | Documentar requisitos de Jenkins con mayor profundidad. | Corregir la observación sobre características y requisitos de implementación. | `jenkins/Dockerfile`, `plugins.txt` y documento final. |
| Entrega final | Agregar Travis CI mediante `.travis.yml`. | Responder al requisito de integración remota con GitHub. | `.travis.yml`. |
| Entrega final | Diferenciar configuración y ejecución comprobada. | Evitar afirmar resultados que no puedan verificarse en consola o dashboard. | Matriz de evidencias y video. |

## Incidencias y tratamiento

| Incidencia | Tratamiento definido |
|---|---|
| Jenkins base no incorpora Docker CLI. | Imagen personalizada en `jenkins/Dockerfile` con Docker CLI y Compose Plugin. |
| Riesgo de pérdida de configuración Jenkins al reiniciar. | Volumen persistente `jenkins_home`. |
| Conflicto entre interfaz Jenkins y servidor web. | Puertos diferenciados: 9090 para Jenkins y 8080 para Nginx. |
| Falta de evidencia de CodeShip. | No declararlo integrado hasta contar con acceso, repositorio vinculado y build verificable. |

## Opiniones del equipo

Cada integrante debe completar una reflexión breve y personal sobre su participación, la herramienta trabajada y el principal aprendizaje obtenido. Evitar textos idénticos entre integrantes.
