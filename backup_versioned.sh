#!/bin/bash

# Date/Heure pour la version de sauvegarde
DATE=$(date +%Y-%m-%d_%H-%M)

# Dossiers
SOURCE="/home/blackgumb/Documents/INSI S3/Admin Sys/Projet/Système de sauvegarde/Donnée_Critique/"
DEST_BASE="/home/blackgumb/Documents/INSI S3/Admin Sys/Projet/Système de sauvegarde/Sauvegarde"
DEST="$DEST_BASE/$DATE"
LOGDIR="/home/blackgumb/Documents/INSI S3/Admin Sys/Projet/Système de sauvegarde/Logs"
LOGFILE="$LOGDIR/backup_$DATE.log"

# Créer les dossiers si nécessaires
mkdir -p "$DEST"
mkdir -p "$LOGDIR"

# Sauvegarde versionnée
rsync -av "$SOURCE" "$DEST" >> "$LOGFILE" 2>&1

