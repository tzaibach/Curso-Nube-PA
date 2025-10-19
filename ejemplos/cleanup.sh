#!/bin/bash

echo "🧹 Limpiando entorno de práctica del curso Docker y Kubernetes..."

# Docker: detener y eliminar contenedores
echo "🛑 Deteniendo contenedores Docker..."
docker stop nginx-curso
docker rm nginx-curso

echo "🗑️ Eliminando contenedores de docker-compose..."
docker compose -f ./docker/postgres/docker-compose.yml down
docker compose -f ./docker/flask-redis/compose.yaml down

# Kubernetes: eliminar recursos
echo "🧼 Eliminando recursos de Kubernetes..."
kubectl delete -f ./kubernetes/configmap.yaml
kubectl delete -f ./kubernetes/secret.yaml
kubectl delete -f ./kubernetes/app-deployment.yaml
kubectl delete -f ./kubernetes/app-service.yaml

echo "✅ Entorno limpio. Puedes verificar con 'docker ps' y 'kubectl get all'."
