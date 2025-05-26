FROM python:3.9

# Actualiza el sistema e instala dependencias necesarias para Pygame
RUN apt-get update && \
    apt-get install -y \
    libxkbcommon-x11-0 \
    libasound2 \
    libpulse0

# Instala pygame mediante pip
RUN pip install pygame

# Define el directorio de trabajo
WORKDIR /app

# Copia el archivo del juego al contenedor
COPY pong.py .

# Comando para ejecutar el juego
CMD ["python3", "pong.py"]
