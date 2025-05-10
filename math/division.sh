#!/bin/bash

# Script para problemas de división

# Generar primer número aleatorio entre 1 y 100
num1=$((RANDOM % 100 + 1))

# Generar segundo número aleatorio entre 1 y 10
num2=$((RANDOM % 10 + 1))

# Calcular el dividendo (para asegurar resultado entero)
dividendo=$((num1 * num2))

# El divisor es el segundo número
divisor=$num2

# La respuesta correcta es el primer número
respuesta_correcta=$num1

echo "Problema de división:"
echo "¿Cuánto es $dividendo ÷ $divisor?"

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
