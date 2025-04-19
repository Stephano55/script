#!/bin/bash

# Date pour les logs
DATE=$(date +%Y-%m-%d_%H-%M)

# Dossiers
SOURCE="/home/blackgumb/Documents/INSI S3/Admin Sys/Projet/Système de sauvegarde/Donnée_Critique/"
DEST="/home/blackgumb/Documents/INSI S3/Admin Sys/Projet/Système de sauvegarde/Sauvegarde/"
LOGDIR="/home/blackgumb/Documents/INSI S3/Admin Sys/Projet/Système de sauvegarde/Logs"
LOGFILE="$LOGDIR/backup_$DATE.log"

# Créer le dossier de logs s'il n'existe pas
mkdir -p "$LOGDIR"

# Lancer la sauvegarde
rsync -av --delete "$SOURCE" "$DEST" >> "$LOGFILE" 2>&1
