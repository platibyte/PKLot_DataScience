#!/bin/bash

# Name der Umgebung, die entfernt und neu erstellt werden soll
ENV_NAME="YOLOV8"

# Umgebung entfernen
echo "Entferne Umgebung '$ENV_NAME'..."
conda env remove --name "$ENV_NAME" --yes

# Cache bereinigen
echo "Bereinige Conda-Cache..."
conda clean --all --yes

# Neue Umgebung erstellen
echo "Erstelle neue Umgebung '$ENV_NAME'..."
conda create --name "$ENV_NAME" --yes

echo "Umgebung '$ENV_NAME' wurde erfolgreich neu erstellt."

conda install -n "$ENV_NAME" -c conda-forge ultralytics ipykernel pytorch torchvision --yes

echo "Conda env für YOLOV8 erfolgreich installiert"
