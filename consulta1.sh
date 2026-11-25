#!/bin/bash
#Tendrás un while con el que siempre tendremos la
#opción de trabajar con los elementos de menu
while true;
do
#Mensajes al usuario
echo "----------- o -----------"
echo -e "Bienvenid@ a la herramienta de consulta de dominio.\n Esto es un ejemplo de lo que debes escribir ---> google.es"
read -p "Escribe el dominio :" dominio
echo "Opciones disponible en la herramienta"
echo "1. Consulta de IP"
echo "2. Consulta de correo electrónico"
echo "3. Consulta de Nombre de servidor"
echo "--------------"
echo "0. Salir de la herramienta"

read -p "¿Qué opción eliges? " opcion

case $opcion in
    1)
    echo -e "Obteniendo resultado....\n"
    echo "la IP es :"
    dig +short $dominio A
    ;;
    2)
    echo -e "Obteniendo resultado....\n"
    echo "El servidor de correo es :"
    dig +short $dominio MX
    ;;
    3)
    echo -e "Obteniendo resultado....\n"
    echo "El servidor de servidor es :"
    dig +short $dominio NS
    ;;
    0)
    echo "Saliendo de la herramienta...."
    exit 0
    ;;
    *)
    echo "Error en tu selección, por favor vuelve a intentarlo"
    ;;
esac
done
