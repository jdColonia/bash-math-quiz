#!/bin/bash

# Script para configurar permisos de ejecución en todos los scripts del Quiz Matemático

# Definir colores para mensajes
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
NORMAL='\033[0m'

# Función para mostrar mensajes de éxito
success_message() {
	echo -e "${GREEN}$1${NORMAL}"
}

# Función para mostrar mensajes de error
error_message() {
	echo -e "${RED}$1${NORMAL}"
}

# Función para mostrar advertencias
warning_message() {
	echo -e "${YELLOW}$1${NORMAL}"
}

echo "Configurando permisos para el Quiz Matemático..."

# Verificar si el script principal existe
if [ ! -f "quiz.sh" ]; then
	error_message "ERROR: No se encontró el script principal 'quiz.sh'."
	error_message "Asegúrate de que todos los archivos estén en su lugar correcto."
	exit 1
fi

# Verificar si el directorio math existe
if [ ! -d "math" ]; then
	error_message "ERROR: No se encontró el directorio 'math'."
	error_message "Asegúrate de que todos los archivos estén en su lugar correcto."
	exit 1
fi

# Verificar si los scripts de operaciones existen
missing_files=false
for script in addition.sh subtraction.sh multiplication.sh division.sh; do
	if [ ! -f "math/$script" ]; then
		warning_message "ADVERTENCIA: No se encontró el script 'math/$script'."
		missing_files=true
	fi
done

if [ "$missing_files" = true ]; then
	warning_message "ADVERTENCIA: Algunos scripts de operaciones no fueron encontrados."
	warning_message "Asegúrate de que todos los archivos estén en su lugar correcto."
fi

# Asignar permisos de ejecución al script principal
echo "Asignando permisos de ejecución al script principal..."
chmod +x quiz.sh
success_message "Permisos asignados a quiz.sh"

# Asignar permisos de ejecución a los scripts de operaciones
echo "Asignando permisos de ejecución a los scripts de operaciones..."
chmod +x math/*.sh 2>/dev/null
success_message "Permisos asignados a los scripts en el directorio 'math'"

success_message "¡Configuración completada!"
success_message "Ahora puedes ejecutar el Quiz Matemático con el comando: ./quiz.sh"
