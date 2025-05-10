#!/bin/bash

# Script principal para el Quiz Matemático

# Función para mostrar el menú
mostrar_menu() {
  clear
  echo "QUIZ MATEMÁTICO"
  echo "1) Problemas de suma"
  echo "2) Problemas de resta"
  echo "3) Problemas de multiplicación"
  echo "4) Problemas de división"
  echo "5) Salir"
  echo -n "Opción? "
}

# Bucle principal
while true; do
  mostrar_menu
  read opcion
  
  # Validar que la opción sea un número entre 1 y 5
  if ! [[ "$opcion" =~ ^[1-5]$ ]]; then
    echo "Opción inválida. Presione Enter para continuar..."
    read
    continue
  fi
  
  # Procesar la opción seleccionada
  case $opcion in
    1)
      ./math/suma.sh
      ;;
    2)
      ./math/resta.sh
      ;;
    3)
      ./math/multiplicacion.sh
      ;;
    4)
      ./math/division.sh
      ;;
    5)
      echo "¡Gracias por participar en el Quiz Matemático!"
      exit 0
      ;;
  esac
done
