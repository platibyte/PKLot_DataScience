#!/bin/bash

# Name der Umgebung, die entfernt und neu erstellt werden soll
ENV_NAME="YOLOV8"

# Neue Umgebung erstellen
echo "Erstelle neue Umgebung '$ENV_NAME'..."
conda create --name "$ENV_NAME" --yes

echo "Umgebung '$ENV_NAME' wurde erfolgreich neu erstellt."

conda install -n "$ENV_NAME" -c conda-forge ultralytics ipykernel tqdm pandas numpy keras-cv pillow pytorch torchvision tensorflow --yes

echo "Conda env für YOLOV8 abgeschlossen"
