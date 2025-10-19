# NGINX con Docker (ejemplo)

Hay tres formas de ejecutar este ejemplo:

## 1. Compilar y ejecutar imagen personalizada

```bash
# Construir imagen
docker build -t curso-nginx .

# Ejecutar contenedor
docker run -d -p 8080:80 --name nginx-curso curso-nginx
```

## 2. Usar imagen oficial `nginx` mapeando el directorio actual

```bash
# Ejecutar nginx mapeando directorio actual
docker run -d -p 8080:80 -v .:/usr/share/nginx/html nginx
```

## 3. Usando Docker Compose

Crear fichero `docker-compose.yml`:

```yaml
services:
  web:
    image: nginx
    volumes:
      - .:/usr/share/nginx/html
    ports:
      - "8080:80"
```

Ejecutar con:
```bash
docker compose up -d
```

## Notas

- Acceder a http://localhost:8080
- Para detener:
  - `docker rm -f nginx-curso`
  - `docker compose down`
