# Responsabilidad individual, trazabilidad y decisiones

## Responsable del proyecto

| Estudiante | Responsabilidad asumida | Aporte verificable |
|---|---|---|
| Johan Sebastian Rodríguez | Diseño, integración, ejecución, documentación y sustentación individual | Repositorio público, Docker, Jenkins, Travis CI, evidencias, informe final e instructivo de sustentación. |

## Trazabilidad de implementaciones

| Fase | Decisión o cambio | Justificación | Evidencia |
|---|---|---|---|
| Entrega 1 | Crear dos contenedores conectados por Docker Compose. | Cumplir la validación de comunicación entre servicios. | `docker-compose.yml` y script de prueba. |
| Entrega 2 | Agregar Jenkins y pipeline versionado. | Automatizar la construcción y la prueba definida en la Entrega 1. | `Jenkinsfile` y `docker-compose.jenkins.yml`. |
| Retroalimentación Entrega 2 | Documentar requisitos de Jenkins con mayor profundidad. | Corregir la observación sobre características y requisitos de implementación. | `jenkins/Dockerfile`, `plugins.txt` y documento final. |
| Entrega final | Agregar Travis CI mediante `.travis.yml`. | Responder al requisito de integración remota con GitHub. | `.travis.yml`. |
| Entrega final | Diferenciar configuración y ejecución comprobada. | Evitar afirmar resultados que no puedan verificarse en consola o dashboard. | Matriz de evidencias y sustentación individual. |

## Incidencias y tratamiento

| Incidencia | Tratamiento definido |
|---|---|
| Jenkins base no incorpora Docker CLI. | Imagen personalizada en `jenkins/Dockerfile` con Docker CLI y Compose Plugin. |
| Riesgo de pérdida de configuración Jenkins al reiniciar. | Volumen persistente `jenkins_home`. |
| Conflicto entre interfaz Jenkins y servidor web. | Puertos diferenciados: 9090 para Jenkins y 8080 para Nginx. |
| Falta de evidencia de CodeShip. | No declararlo integrado hasta contar con acceso, repositorio vinculado y build verificable. |

## Reflexión individual

La implementación permitió consolidar un flujo de integración continua en el que cada herramienta cumple una responsabilidad específica. GitHub conserva la trazabilidad; Docker asegura un entorno reproducible; Jenkins automatiza la validación local; y Travis CI extiende la validación al repositorio remoto. El principal aprendizaje fue la importancia de diferenciar entre una configuración técnica versionada y una ejecución realmente comprobada mediante evidencia visible.
