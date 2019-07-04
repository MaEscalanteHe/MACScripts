#!/bin/bash
## By: ME.

echo 'Este script borra el cache de Mozilla Firefox y ejecuta la prueba de MECE.'
sleep 1
echo 'Matando proceso de Firefox...'
pkill -f firefox
sleep 0.5
echo 'Eliminando cache...'
rm -rf ~/.cache/mozilla
rm -rf ~/.mozilla
sleep 0.5
echo 'Ejecutando la prueba de MECE...'
firefox --private-window 159.90.91.100 &
exit
