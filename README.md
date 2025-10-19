# Curso Introducción a los Contenedores en la Nube

Este repositorio contiene ejemplos prácticos, recursos y enlaces útiles para el curso de introducción a contenedores Docker y orquestación con Kubernetes.

`tinyurl.com/cursonubePA`

![QR del curso](img/QR-cursonubepa.png)

## ⚙️ Antes de comenzar

Para preparar tu entorno de laboratorio, sigue estos pasos según tu sistema operativo:

### Windows
- Instala Docker Desktop, Windows Terminal y Git:
	- `winget install Docker.DockerDesktop`
	- `winget install Microsoft.WindowsTerminal`
	- `winget install Git.Git`
- Instala Kubernetes desde **Settings > Kubernetes**.

### macOS
- Instala Homebrew si no lo tienes (https://brew.sh).
- Instala Docker Desktop y Git:
    - `brew install docker-desktop`
    - `brew install git`
- Instala Kubernetes desde **Settings > Kubernetes**.

## 📦 Ejemplos incluidos

### Docker
- Servidores web: NGINX
- Bases de datos: PostgreSQL, Redis
- Aplicaciones: Wordpress
- Comandos básicos:
	- `docker run -d -p 8080:80 --name <NOMBRE> <IMAGEN>`
	- `docker stop <NOMBRE>`
	- `docker rm <NOMBRE>`
	- `docker build -t <IMAGEN:TAG> .`

### Kubernetes
- ConfigMap y Secret
- Despliegue con Deployment y Service
- Escalado y actualización (`rollout`, `undo`)
- Uso de operadores para MinIO, Redis, PostgreSQL

## 🔗 Enlaces útiles

- [Labs interactivos de Docker (KodeKloud)](https://kodekloud.com/pages/free-labs/docker/docker-basic-commands)
- [Tutoriales prácticos de contenedores (Iximiuz)](https://labs.iximiuz.com/tutorials)
- [Ejemplos de apps con Docker Compose (Awesome Compose)](https://github.com/docker/awesome-compose)
- [Documentación oficial de Docker](https://docs.docker.com/)
- [Documentación oficial de Kubernetes](https://kubernetes.io/docs/)

## 🧠 Recomendaciones

- Para acceder a ficheros locales y/o persistir datos, mapea directorios o volúmenes:
  - `docker run -v ...`
  - `docker volume create ...`
- Elimina automáticamente los contenedores cuando se detengan:
  - `docker run --rm ...`
- Al terminar, elimina los contenedores sobrantes y limpia el sistema:
  - `docker rm ...`
  - `docker system prune`
  - `docker volume prune`
