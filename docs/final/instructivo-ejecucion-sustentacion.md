# Instructivo de ejecución y sustentación individual

**Estudiante responsable:** Johan Sebastian Rodríguez  
Este instructivo permite ejecutar el proyecto, recopilar evidencia real y realizar una sustentación individual de 5 a 6 minutos.

## 1. Preparación

Antes de iniciar:

- Verificar que Docker Desktop esté abierto y en modo Linux Containers.
- Tener acceso al repositorio público de GitHub.
- Mantener abiertas dos ventanas de navegador: GitHub y Jenkins/Travis CI.
- Ejecutar los comandos desde la raíz del repositorio.
- No mostrar credenciales, tokens ni información sensible durante la grabación.

## 2. Ejecución de Docker

Construir e iniciar el ambiente:

```bash
docker compose build
docker compose up -d
docker compose ps
```

Validar la comunicación entre contenedores:

```bash
docker compose exec cliente-pruebas validar_comunicacion.sh
```

Validar el servicio desde navegador:

```text
http://localhost:8080
```

Capturar:

1. Salida de `docker compose ps`.
2. Salida del script de comunicación.
3. Página del servidor web en el navegador.

## 3. Ejecución de Jenkins

Con los servicios Docker activos, construir e iniciar Jenkins:

```bash
docker compose -f docker-compose.jenkins.yml up -d --build
```

Obtener la contraseña inicial:

```bash
docker exec entrega2-jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

Abrir:

```text
http://localhost:9090
```

En la configuración inicial:

1. Pegar la contraseña inicial.
2. Instalar los plugins sugeridos.
3. Crear el usuario administrador.
4. Crear una tarea: **New Item → Pipeline**.
5. Nombre sugerido: `validacion-integracion-continua`.
6. Seleccionar **Pipeline script from SCM**.
7. Elegir Git, registrar la URL del repositorio y seleccionar la rama `main`.
8. Usar `Jenkinsfile` como ruta del script.
9. Guardar y ejecutar **Build Now**.

Capturar:

1. Dashboard de Jenkins.
2. Plugins instalados.
3. Configuración de la tarea Pipeline.
4. Vista de etapas o consola del build.
5. Resultado de la etapa de comunicación.

## 4. Activación de Travis CI

1. Ingresar a Travis CI usando GitHub.
2. Autorizar la conexión con el repositorio `johan-zero/universidad-integracion-continua`.
3. Activar el repositorio público.
4. Confirmar que Travis detecte `.travis.yml`.
5. Realizar un commit de documentación en la rama `main` para disparar el build, si la plataforma no permite ejecutarlo manualmente.
6. Esperar el resultado y abrir los logs.

Capturar:

1. Repositorio activado en Travis CI.
2. Build asociado al commit.
3. Estado final del build.
4. Log donde se observen construcción, servicios y validación.

## 5. CodeShip

Solo mostrar CodeShip si se cuenta con acceso operativo, repositorio vinculado y build visible. De lo contrario, explicar que se documentó la revisión de disponibilidad y que no se presenta una ejecución no verificable. Consultar [estado de CodeShip](codeship-estado.md).

## 6. Secuencia de sustentación individual

| Tiempo | Responsable | Evidencia y mensaje clave |
|---|---|---|
| 0:00–0:35 | Johan Sebastian Rodríguez | Presentar el objetivo y el repositorio público. |
| 0:35–1:15 | Johan Sebastian Rodríguez | Mostrar GitHub, README, commits y trazabilidad. |
| 1:15–2:05 | Johan Sebastian Rodríguez | Mostrar Docker Compose, servicios activos y comunicación. |
| 2:05–3:05 | Johan Sebastian Rodríguez | Mostrar requisitos, Jenkins y el pipeline. |
| 3:05–4:05 | Johan Sebastian Rodríguez | Mostrar `.travis.yml`, Travis CI y el build. |
| 4:05–4:45 | Johan Sebastian Rodríguez | Presentar incidencias, decisiones y control de cambios. |
| 4:45–5:30 | Johan Sebastian Rodríguez | Presentar conclusiones y recomendaciones. |

## 7. Mensajes técnicos sugeridos

**GitHub:** “GitHub concentra el código, la documentación y la trazabilidad; los commits permiten identificar los cambios realizados y su propósito.”

**Docker:** “Docker Compose define dos servicios aislados conectados por una red interna. El cliente valida resolución de nombre y respuesta HTTP del servidor.”

**Jenkins:** “Jenkins consume un pipeline versionado. Construye imágenes, inicia los servicios y ejecuta la validación definida en el proyecto.”

**Travis CI:** “Travis CI replica el criterio de validación ante cambios en `main`, utilizando la configuración `.travis.yml`.”

## 8. Contingencias

| Situación | Acción recomendada |
|---|---|
| Un contenedor no inicia | Ejecutar `docker compose logs <servicio>` y revisar el puerto disponible. |
| La red no existe para Jenkins | Ejecutar primero `docker compose up -d` para crear `red-integracion`. |
| Jenkins no carga | Revisar `docker ps` y `docker logs entrega2-jenkins`. |
| El pipeline no encuentra Docker | Confirmar que el contenedor Jenkins se construyó con `--build` y que Docker Desktop está activo. |
| Travis no dispara build | Confirmar que el repositorio está activado, `.travis.yml` está en `main` y realizar un commit nuevo. |

## 9. Cierre

Al finalizar la demostración, detener los recursos:

```bash
docker compose down
docker compose -f docker-compose.jenkins.yml down
```

Conservar las capturas en una carpeta identificada y anexarlas al documento final con título, explicación y fuente.
