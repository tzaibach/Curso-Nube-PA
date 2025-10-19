# Ejemplo de docker-compose.yml para PostgreSQL

Este directorio contiene un ejemplo de PostgreSQL ejecutado con Docker Compose.

Descripción del fichero docker-compose.yml
- Servicio `db`: imagen oficial `postgres:15` el puerto 5432 estableciendo la variable de entorno `POSTGRES_PASSWORD`.
- Servicio `adminer`: interfaz web para administrar bases de datos (Adminer) en el puerto 9000.

Cómo iniciarlo
1. Sitúate en este directorio:
   ```bash
   cd ejemplos/docker/postgres
   ```
2. Levanta los servicios en segundo plano:
   ```bash
   docker compose up -d
   ```
3. Accede a Adminer en:
   ```
   http://localhost:9000
   ```
4. Conéctate a la base de datos:
   - motor: PostgreSQL
   - usuario: `postgres` 
   - contraseña: `postgres`
   - base de datos: `postgres`

Cómo pararlo
- Para detener y eliminar los contenedores, redes y volúmenes creados por Compose:
  ```bash
  docker compose down
  ```

Comandos útiles
- Ver logs:
  ```bash
  docker compose logs -f
  ```
- Reiniciar un servicio:
  ```bash
  docker compose restart db
  ```
- Ejecutar cliente `psql` dentro del contenedor `db`:
  ```bash
  docker compose exec db psql -U postgres
  ```

Notas
- Instrucciones de la imagen Docker oficial para PostgreSQL:
  - https://hub.docker.com/_/postgres
