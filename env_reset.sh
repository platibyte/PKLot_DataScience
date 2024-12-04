#!/bin/bash

# Name der Umgebung, die entfernt und neu erstellt werden soll
ENV_NAME="YOLOV8"

# Umgebung entfernen
echo "Entferne Umgebung '$ENV_NAME'..."
conda env remove --name "$ENV_NAME" --yes

# Cache bereinigen
echo "Bereinige Conda-Cache..."
conda clean --all --yes


