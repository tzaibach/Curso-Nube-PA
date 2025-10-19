# Importación de librerías necesarias
from flask import Flask
from redis import Redis

# Inicialización de la aplicación Flask y conexión a Redis
app = Flask(__name__)
redis = Redis(host='redis', port=6379)

# Ruta principal que muestra el contador
@app.route('/')
def hello():
    # Incrementa el contador en Redis y obtiene su valor
    redis.incr('hits')
    counter = str(redis.get('hits'),'utf-8')
    
    # Template HTML con estilos CSS incorporados
    html = f"""
    <html>
    <head>
        <style>
            /* Estilos generales del body */
            body {{
                background-color: #f0f0f0;
                font-family: Arial, sans-serif;
                margin: 40px;
            }}
            /* Estilos de la tabla */
            table {{
                border-collapse: collapse;
                width: 50%;
                background-color: white;
            }}
            /* Estilos de las celdas */
            th, td {{
                border: 1px solid #ddd;
                padding: 8px;
                text-align: left;
            }}
            /* Estilos del encabezado de la tabla */
            th {{
                background-color: #4CAF50;
                color: white;
            }}
        </style>
    </head>
    <body>
        <h1>Contador en Redis</h1>
        <table>
            <tr>
                <th>Métrica</th>
                <th>Valor</th>
            </tr>
            <tr>
                <td>Hits</td>
                <td>{counter}</td>
            </tr>
        </table>
    </body>
    </html>
    """
    
    return html

# Punto de entrada de la aplicación
if __name__ == "__main__":
    # Inicia el servidor Flask en modo debug
    app.run(host="0.0.0.0", port=8000, debug=True)
