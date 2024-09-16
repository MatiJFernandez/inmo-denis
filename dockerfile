# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos del proyecto al contenedor
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .

# Expone el puerto en el que Flask correrá
EXPOSE 5000

# Comando para iniciar la aplicación
CMD ["python", "app.py"]
