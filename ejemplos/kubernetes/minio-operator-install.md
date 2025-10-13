# Instalación del operador de MinIO en Kubernetes

1. Añadir el repositorio Helm:
   ```bash
   helm repo add minio https://charts.min.io/
   helm repo update
   ```

2. Instalar el operador:
    ```bash
    helm install minio-operator minio/operator --namespace minio-operator --create-namespace
    ```

3. Acceder al panel de MinIO:
    ```bash
    kubectl port-forward svc/minio-operator-console 9090:9090 -n minio-operator
    ```

Más información: https://min.io/docs/minio/kubernetes/upstream/index.html
