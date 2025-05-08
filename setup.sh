#!/bin/bash

# Script para configurar permisos de ejecución en todos los scripts del Quiz Matemático
echo "Configurando permisos para el Quiz Matemático..."

# Verificar si el script principal existe
if [ ! -f "quiz.sh" ]; then
    echo "ERROR: No se encontró el script principal 'quiz.sh'."
    echo "Asegúrate de que todos los archivos estén en su lugar correcto."
    exit 1
fi

# Verificar si los scripts de operaciones existen
missing_files=false
for script in addition.sh subtraction.sh multiplication.sh division.sh; do
    if [ ! -f "math/$script" ]; then
        echo "ADVERTENCIA: No se encontró el script 'math/$script'."
        missing_files=true
    fi
done

if [ "$missing_files" = true ]; then
    echo "Algunos scripts de operaciones no fueron encontrados."
    echo "Asegúrate de que todos los archivos estén en su lugar correcto."
fi

# Asignar permisos de ejecución al script principal
echo "Asignando permisos de ejecución al script principal..."
chmod +x quiz.sh
echo "Permisos asignados a quiz.sh"

# Asignar permisos de ejecución a los scripts de operaciones
echo "Asignando permisos de ejecución a los scripts de operaciones..."
chmod +x math/*.sh 2>/dev/null
echo "Permisos asignados a los scripts en el directorio 'math'"

echo "¡Configuración completada!"
echo "Ahora puedes ejecutar el Quiz Matemático con el comando: ./quiz.sh"
