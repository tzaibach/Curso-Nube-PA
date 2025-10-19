#!/bin/bash

echo "🚀 Iniciando entorno de práctica para el curso..."

# Docker: levantar NGINX con contenido personalizado
echo "📦 Levantando NGINX con contenido personalizado..."
docker build -t curso-nginx ./docker/nginx
docker run -d -p 8080:80 --name nginx-curso curso-nginx

# Docker: levantar PostgreSQL
echo "🗄️ Levantando PostgreSQL..."
docker compose -f ./docker/postgres/docker-compose.yml up -d

# Docker: levantar Redis + Flask
echo "⚡ Levantando Redis + Flask..."
docker compose -f ./docker/flask-redis/compose.yaml up -d

# Kubernetes: aplicar ConfigMap y Secret
echo "🔐 Aplicando ConfigMap y Secret en Kubernetes..."
kubectl apply -f ./kubernetes/configmap.yaml
kubectl apply -f ./kubernetes/secret.yaml

# Kubernetes: desplegar aplicación NGINX
echo "📡 Desplegando aplicación NGINX en Kubernetes..."
kubectl apply -f ./kubernetes/app-deployment.yaml
kubectl apply -f ./kubernetes/app-service.yaml

echo "✅ Entorno listo. Puedes acceder a NGINX en http://localhost:8080 y revisar los pods con 'kubectl get pods'."
