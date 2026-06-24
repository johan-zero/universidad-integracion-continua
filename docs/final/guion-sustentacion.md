# Guion de sustentación individual

**Estudiante:** Johan Sebastian Rodríguez  
**Duración objetivo:** 5 a 6 minutos.

## Apertura — 0:00 a 0:35

Presentar el nombre del proyecto, el objetivo del módulo y el repositorio público. Explicar que la solución integra control de cambios, contenedores y automatización.

## GitHub y trazabilidad — 0:35 a 1:15

Mostrar la página principal del repositorio, el README, los commits y los archivos de configuración. Explicar que GitHub concentra la versión del proyecto y permite identificar los cambios realizados, sus fechas y su propósito.

## Docker — 1:15 a 2:05

Mostrar `docker-compose.yml`, los dos servicios y la red `red-integracion`. Ejecutar `docker compose ps` y el script `validar_comunicacion.sh`. Explicar que el cliente de pruebas verifica conectividad con el servidor web dentro de la red Docker.

## Jenkins y corrección de retroalimentación — 2:05 a 3:05

Explicar los requisitos de Jenkins: Docker Desktop en modo Linux Containers, imagen basada en Java 21, volumen persistente, puerto 9090, acceso controlado al Docker daemon y plugins necesarios. Mostrar `docker-compose.jenkins.yml`, `Jenkinsfile`, la tarea Pipeline y la consola de ejecución.

## Travis CI — 3:05 a 4:05

Mostrar `.travis.yml`, la activación del repositorio en Travis CI y el build asociado. Explicar que Travis detecta cambios en GitHub y ejecuta construcción, inicio del ambiente y prueba de comunicación. Mostrar el estado del build solo si aparece en Travis CI.

## Historial, incidencias y decisiones — 4:05 a 4:45

Mostrar el historial de commits, las incidencias identificadas y la decisión de mantener configuraciones versionadas. Mencionar que los resultados de cada herramienta se validan de forma independiente y que no se presentan ejecuciones sin evidencia.

## Cierre — 4:45 a 5:30

Resumir el valor de la arquitectura: GitHub aporta trazabilidad; Docker aporta reproducibilidad; Jenkins y Travis automatizan validaciones. Presentar las conclusiones y recomendar mantener las credenciales fuera del repositorio, revisar logs ante fallos y ejecutar pruebas antes de integrar cambios.

## Recomendaciones de grabación

- Johan debe aparecer o intervenir con voz de forma identificable durante toda la sustentación.
- Las pantallas deben estar a 100% de zoom y sin datos sensibles.
- Cada captura debe mostrar una evidencia concreta y explicarse en una frase.
- Evitar leer el documento; explicar el flujo mientras se muestra la herramienta.
- No declarar que CodeShip está integrado si no existe una cuenta, dashboard y ejecución verificables.
