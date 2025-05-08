#!/bin/bash

# Script para problemas de suma

# Generar dos números aleatorios entre 1 y 100
num1=$((RANDOM % 100 + 1))
num2=$((RANDOM % 100 + 1))

# Calcular la respuesta correcta
respuesta_correcta=$(( num1 + num2))

echo "Problema de suma:"
echo "¿Cuánto es $num1 + $num2?"

# Dar al usuario 3 oportunidades para responder
for intento in 1 2 3; do
  echo -n "Intento $intento: "
  read respuesta_usuario
  
  # Validar que la respuesta sea un número
  if ! [[ "$respuesta_usuario" =~ ^[0-9]+$ ]]; then
    echo "Por favor, ingrese un número válido."
    continue
  fi
  
  # Verificar si la respuesta es correcta
  if [ "$respuesta_usuario" -eq "$respuesta_correcta" ]; then
    echo "¡Felicidades! Respuesta correcta."
    echo "Presione Enter para volver al menú principal..."
    read
    exit 0
  else
    echo "Respuesta incorrecta. Intente nuevamente."
  fi
done

# Si llegamos aquí, el usuario agotó sus 3 intentos
echo "Lo siento, has agotado tus 3 intentos."
echo "La respuesta correcta es: $respuesta_correcta"
echo "Presione Enter para volver al menú principal..."
read
exit 0
