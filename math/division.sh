#!/bin/bash

# Script para problemas de división

# Definir colores para mensajes
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NORMAL='\033[0m'

# Definir constantes
readonly MAX_ATTEMPTS=3
readonly MIN_NUM1=1
readonly MAX_NUM1=100
readonly MIN_NUM2=1
readonly MAX_NUM2=10

# Generar primer número aleatorio entre 1 y 100
num1=$((RANDOM % MAX_NUM1 + MIN_NUM1))

# Generar segundo número aleatorio entre 1 y 10
num2=$((RANDOM % MAX_NUM2 + MIN_NUM2))

# Calcular el dividendo (para asegurar resultado entero)
dividend=$((num1 * num2))

# El divisor es el segundo número
divisor=$num2

# La respuesta correcta es el primer número
correct_answer=$num1

# Función para validar entrada numérica
validate_number() {
	local input=$1
	if ! [[ "$input" =~ ^[0-9]+$ ]]; then
		return 1 # No es un número válido
	fi
	return 0 # Es un número válido
}

echo -e "${BLUE}Problema de división:${NORMAL}"
echo -e "${YELLOW}¿Cuánto es $dividend ÷ $divisor?${NORMAL}"

# Dar al usuario 3 oportunidades para responder
for attempt in $(seq 1 $MAX_ATTEMPTS); do
	echo -n "Intento $attempt: "
	read user_answer

	# Validar que la respuesta sea un número
	if ! validate_number "$user_answer"; then
		echo -e "${RED}Por favor, ingrese un número válido.${NORMAL}"
		continue
	fi

	# Verificar si la respuesta es correcta
	if [ "$user_answer" -eq "$correct_answer" ]; then
		echo -e "${GREEN}¡Felicidades! Respuesta correcta.${NORMAL}"
		echo "Presione Enter para volver al menú principal..."
		read
		exit 0
	else
		echo -e "${RED}Respuesta incorrecta. Intente nuevamente.${NORMAL}"
	fi
done

# Si llegamos aquí, el usuario agotó sus 3 intentos
echo -e "${RED}Lo siento, has agotado tus $MAX_ATTEMPTS intentos.${NORMAL}"
echo -e "${YELLOW}La respuesta correcta es: $correct_answer${NORMAL}"
echo "Presione Enter para volver al menú principal..."
read
exit 0
