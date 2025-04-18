#!/bin/bash

# Vérification des arguments
if [ $# -lt 1 ]; then
  echo "Usage: $0 fichier [fichier_de_sortie]"
  exit 1
fi

input_file="$1"
output_file="${2:-sorted_$input_file}"

# Vérification que le fichier existe
if [ ! -f "$input_file" ]; then
  echo "Erreur : fichier '$input_file' introuvable."
  exit 2
fi

# Tri du fichier
sort "$input_file" > "$output_file"

echo "Fichier trié créé : $output_file"
