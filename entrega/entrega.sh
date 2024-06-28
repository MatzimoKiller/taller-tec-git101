#!/bin/bash

#Muestra las opciones en pantalla y les agrega colores
imprimirOpciones(){
echo -e "\e[0m 1) Opcion 1"
echo -e "\e[32m 2) Opcion 2"
echo -e "\e[33m 3) Opcion 3"
echo -e "\e[0;36m 4) opcion 4"
echo -e "\e[0;31m (S) Salir"
echo -e "\e[0m" #Vuelve los colores a la normalidad
}

#Pregunta al usuario si de verdad quiere salir de la aplicacion
confirmarCierre(){
echo ""
read -p "Se cerrara el programa, esta seguro de que quiere salir? S para confirmar " salir

if [ $salir = "S" -o $salir = "s" ]
then
	exit
fi
}

#Abre el script indicado segun la opcion que se le pase
abrirOpcion(){
case $1 in

"1") echo "Ha pulsado la opcion 1"
;;

"2") echo "Ha pulsado la opcion 2"
;;

"3") echo "Ha pulsado la opcion 3"
;;

"4") echo "Ha pulsado la opcion 4"
;;

"S")
confirmarCierre
;;
"s")
confirmarCierre
;;
*)
echo "Opcion invalida"
;;

esac
}

#----------------------------------------------------------------------------------
clear #Limpia la pantalla al empezar

while true #Usamos while para que no suceda que el usuario no pueda interactuar mas con el script despues de ingresar una opcion mal
do
	imprimirOpciones
	read -p "Seleccione una opcion " opc
	abrirOpcion $opc
done
#Maximo Gilino 332163
