# **Quiz Matemático** 📊

## **Autores** ✒️

> - Santiago Escobar León - A00382203
> - Juan Manuel Díaz Moreno - A00394477
> - Juan David Colonia Aldana - A00395956

## **Descripción** 📝

Este es un sencillo quiz matemático interactivo desarrollado en Bash. Te permite practicar operaciones matemáticas básicas como suma, resta, multiplicación y división a través de una interfaz de línea de comandos.

## **Instalación** 🚀

Para instalar el Quiz Matemático, sigue estos pasos:

1. Descarga o clona este repositorio:

```bash
git clone https://github.com/jdColonia/bash-math-quiz
```

2. Ejecuta el script de configuración para establecer los permisos necesarios:

```bash
./setup.sh
```

Si el script no tiene permisos de ejecución, puedes otorgárselos con:

```bash
chmod +x setup.sh
```

## **Uso** 🎮

Una vez que hayas completado la instalación, iniciar el juego es muy fácil:

1. Ejecuta el script principal:

```bash
./quiz.sh
```

2. Selecciona una operación matemática del menú principal (1-4) o elige salir (5)
3. Responde a los problemas matemáticos que se te presentan

## **Ejemplo de juego** 📝

```
=============================
       QUIZ MATEMÁTICO
=============================
1) Problemas de suma
2) Problemas de resta
3) Problemas de multiplicación
4) Problemas de división
5) Salir
=============================
Opción? 1

Problema de suma:
¿Cuánto es 45 + 27?
Intento 1: 72
¡Felicidades! Respuesta correcta.
Presione Enter para volver al menú principal...
```

## **Estructura del proyecto** 🧩

- `quiz.sh` - Script principal que muestra el menú y maneja la navegación
- `setup.sh` - Script de configuración para establecer permisos
- `math/` - Carpeta que contiene los scripts de operaciones matemáticas:
  - `addition.sh` - Problemas de suma
  - `subtraction.sh` - Problemas de resta
  - `multiplication.sh` - Problemas de multiplicación
  - `division.sh` - Problemas de división

## **Requisitos** 📋

- Sistema operativo basado en Unix (Linux, macOS) o Windows con WSL/Git Bash
