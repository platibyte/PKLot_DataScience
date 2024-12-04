#!/bin/bash

# Name der Umgebung, die entfernt und neu erstellt werden soll
ENV_NAME="YOLOV8"

# Neue Umgebung erstellen
echo "Erstelle neue Umgebung '$ENV_NAME'..."
conda create --name "$ENV_NAME" --yes

echo "Umgebung '$ENV_NAME' wurde erfolgreich neu erstellt."

# Install all packages together using conda
conda install -n "$ENV_NAME" -c pytorch -c nvidia -c conda-forge pytorch torchvision pytorch-cuda=11.8 ultralytics ipykernel tqdm pandas numpy keras-cv pillow

echo "Conda env für YOLOV8 abgeschlossen"
