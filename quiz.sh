#!/bin/bash

# Script principal para el Quiz Matemático

# Definir colores para mensajes
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NORMAL='\033[0m'

# Función para mostrar el menú
show_menu() {
	clear
	echo -e "${BLUE}===================================${NORMAL}"
	echo -e "${NORMAL}           QUIZ MATEMÁTICO           ${NORMAL}"
	echo -e "${BLUE}===================================${NORMAL}"
	echo -e "${NORMAL}1) Problemas de suma${NORMAL}"
	echo -e "${NORMAL}2) Problemas de resta${NORMAL}"
	echo -e "${NORMAL}3) Problemas de multiplicación${NORMAL}"
	echo -e "${NORMAL}4) Problemas de división${NORMAL}"
	echo -e "${RED}5) Salir${NORMAL}"
	echo -e "${BLUE}===================================${NORMAL}"
	echo -n "Opción? "
}

# Función para manejar errores
handle_error() {
	local script=$1
	echo -e "${RED}ERROR: No se pudo ejecutar el script '$script'.${NORMAL}"
	echo "Presione Enter para continuar..."
	read
}

# Bucle principal
while true; do
	show_menu
	read option

	# Validar que la opción sea un número entre 1 y 5
	if ! [[ "$option" =~ ^[1-5]$ ]]; then
		echo -e "${YELLOW}Opción inválida. Presione Enter para continuar...${NORMAL}"
		read
		continue
	fi

	# Procesar la opción seleccionada
	case $option in
	1)
		./math/addition.sh || handle_error "addition.sh"
		;;
	2)
		./math/subtraction.sh || handle_error "subtraction.sh"
		;;
	3)
		./math/multiplication.sh || handle_error "multiplication.sh"
		;;
	4)
		./math/division.sh || handle_error "division.sh"
		;;
	5)
		echo -e "${GREEN}¡Gracias por participar en el Quiz Matemático!${NORMAL}"
		exit 0
		;;
	esac
done
