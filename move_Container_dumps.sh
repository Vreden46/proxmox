#!/bin/bash

# Überprüfen, ob das Quellverzeichnis existiert
if [ -d "/var/lib/vz/dump" ]; then
  # Überprüfen, ob das Zielverzeichnis existiert, andernfalls erstellen
  if [ ! -d "/mnt/pve/BackUp/dump" ]; then
    mkdir -p "/mnt/pve/BackUp/dump"
  fi

  # Verschieben Sie die Dateien vom Quellverzeichnis zum Zielverzeichnis
  mv "/var/lib/vz/dump"/* "/mnt/pve/BackUp/dump/"

  echo "Dateien wurden erfolgreich verschoben."
else
  echo "Das Quellverzeichnis existiert nicht."
fi
