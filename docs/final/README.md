# Entrega final — Integración Continua

**Estudiante responsable:** Johan Sebastian Rodríguez

Esta carpeta concentra los artefactos de soporte para el documento final y la sustentación individual en vivo.

## Documentos principales

| Documento | Propósito |
|---|---|
| [entrega-final.md](entrega-final.md) | Informe técnico consolidado del proyecto. |
| [instructivo-ejecucion-sustentacion.md](instructivo-ejecucion-sustentacion.md) | Guía operativa para ejecutar y presentar la solución. |
| [matriz-evidencias.md](matriz-evidencias.md) | Control de evidencias obligatorias y responsable individual. |
| [guion-sustentacion.md](guion-sustentacion.md) | Secuencia sugerida del video individual de 5 a 6 minutos. |
| [roles-y-trazabilidad.md](roles-y-trazabilidad.md) | Responsabilidad individual, decisiones técnicas, incidencias y trazabilidad. |
| [codeship-estado.md](codeship-estado.md) | Criterio de veracidad y tratamiento de CodeShip. |
| [evidencias/README.md](evidencias/README.md) | Nombres y criterio de calidad de las capturas reales. |

## Estado de la solución

| Componente | Estado en repositorio | Evidencia de ejecución requerida |
|---|---|---|
| GitHub | Repositorio público, documentación y commits. | Mostrar repositorio e historial de cambios. |
| Docker | Servicios, red y script de comunicación versionados. | Mostrar `docker compose ps` y validación. |
| Jenkins | Imagen, plugins, compose y pipeline versionados. | Mostrar dashboard, tarea y consola. |
| Travis CI | `.travis.yml` versionado. | Activar repositorio y mostrar build/logs. |
| CodeShip | Estado de disponibilidad documentado. | Solo mostrar si existe ejecución verificable. |

## Regla de presentación

Cada captura incluida en el informe debe indicar qué herramienta se muestra, qué acción se ejecutó y qué resultado se obtuvo. Debe llevar número de figura, título, explicación breve y la fuente **Elaboración propia**.

No se deben presentar como éxitos las ejecuciones de Jenkins, Travis CI o CodeShip que no tengan evidencia visible en consola o dashboard.
