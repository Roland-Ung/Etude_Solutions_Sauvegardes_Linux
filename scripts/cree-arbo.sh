#!/bin/bash

USER=$(whoami)
BASE="$HOME/data-$USER"

mkdir -p "BASE"
cd "$BASE" || exit 1

echo "Fichier de test pour $USER" > test-$USER.txt
echo "Fichier cache pour $USER" > .test.dot-$USER.txt

ln -s test-$USER.txt test-sl-$USER.txt
ln test-$USER.txt test-hl-$USER.txt
