# Usar imagen oficial Python Alpine (ligera)
FROM python:3.10-alpine

# Establecer directorio de trabajo
WORKDIR /code

# Instalar dependencias listadas en requirements.txt con pip
# (sin caché para reducir tamaño)
COPY requirements.txt /code
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto del código fuente
COPY . /code

# Ejecutar la aplicación
ENTRYPOINT ["python3"]
CMD ["app.py"]
