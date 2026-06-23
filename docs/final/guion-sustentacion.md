# Guion de sustentacion final

Duracion objetivo: 5 a 6 minutos.

## Apertura - 0:00 a 0:30

**Integrante 1:** Presentar el nombre del proyecto, el objetivo del modulo y el repositorio. Explicar que la solucion integra control de cambios, contenedores y automatizacion.

## GitHub y trazabilidad - 0:30 a 1:15

**Integrante 1:** Mostrar la pagina principal del repositorio, el README, los commits y los archivos de configuracion. Explicar que GitHub concentra la version del proyecto y permite identificar cambios, responsables y fechas.

## Docker - 1:15 a 2:05

**Integrante 2:** Mostrar `docker-compose.yml`, los dos servicios y la red `red-integracion`. Ejecutar `docker compose ps` y el script `validar_comunicacion.sh`. Explicar que el cliente de pruebas verifica conectividad con el servidor web dentro de la red Docker.

## Jenkins y correccion de retroalimentacion - 2:05 a 3:05

**Integrante 3:** Explicar los requisitos de Jenkins: Docker Desktop en modo Linux Containers, imagen oficial LTS, volumen persistente, puerto 9090, acceso al Docker daemon y plugins necesarios. Mostrar `docker-compose.jenkins.yml`, `Jenkinsfile`, la tarea Pipeline y la consola de ejecucion.

## Travis CI - 3:05 a 4:05

**Integrante 4:** Mostrar `.travis.yml`, la activacion del repositorio en Travis CI y el build asociado. Explicar que Travis detecta cambios en GitHub y ejecuta construcción, inicio del ambiente y prueba de comunicacion. Mostrar el estado del build solo si aparece en Travis CI.

## Historial, incidencias y decisiones - 4:05 a 4:45

**Integrante 4:** Mostrar el historial de commits, las incidencias identificadas y la decision de mantener configuraciones versionadas. Mencionar que los resultados de cada herramienta se validan de forma independiente y no se presentan ejecuciones sin evidencia.

## Cierre - 4:45 a 5:30

**Integrante 5:** Resumir el valor de la arquitectura: GitHub aporta trazabilidad; Docker aporta reproducibilidad; Jenkins y Travis automatizan validaciones. Presentar conclusiones y recomendar mantener las credenciales fuera del repositorio, revisar logs ante fallos y ejecutar pruebas antes de integrar cambios.

## Recomendaciones de grabacion

- Cada integrante debe aparecer o intervenir con voz de forma identificable.
- Las pantallas deben estar a 100% de zoom y sin datos sensibles.
- Cada captura debe mostrar una evidencia concreta y explicarse en una frase.
- Evitar leer el documento; explicar el flujo mientras se muestra la herramienta.
- No declarar que CodeShip esta integrado si no existe una cuenta, dashboard y ejecucion verificables.
