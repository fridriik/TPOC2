# Calculadora con asm y C

En este proyecto se desarrolló una calculadora que integra código ensamblador y C. La finalidad fue profundizar en la interacción entre ambos lenguajes, comprendiendo cómo el ensamblador maneja las operaciones aritméticas básicas y cómo se comunica con C para procesar y mostrar los resultados.

### Problemas y Soluciones
Durante el desarrollo, se encontraron problemas al intentar usar la VM preconfigurada de la cursada. Iba muy lenta e ineficiente para la realización del TP, ya que se colgaba demasiado tiempo realizando tareas. Por esta razón, se optó por instalar nasm y sasm en otra VM.

Resolución del Error error: /tmp/SASM/macro.o: No such file or directory
Un error recurrente al intentar ensamblar el código fue:
   ```bash
   error: /tmp/SASM/macro.o: No such file or directory
   ```
Este problema se resolvió instalando las bibliotecas de 32 bits necesarias usando el siguiente comando:
   ```bash
   sudo apt install gcc-multilib
   ```
## Paso a paso para compilar y ejecutar la calculadora

1. **Ensamblar el código en ensamblador:**
   ```bash
   nasm -f elf main.asm -o main.o
* nasm: Es el comando para ensamblar código fuente en lenguaje ensamblador.
* -f elf: Especifica el formato de salida como ELF (Executable and Linkable Format).
* main.asm: Es el archivo que contiene el código en ensamblador.
* -o main.o: Especifica el nombre del archivo de objeto de salida.

2. **Compilar los archivos de objeto:**
   ```bash
   gcc -m32 calculadora.o main.o -o calculadora
* gcc: Es el compilador GNU C.
* -m32: Especifica que el código se compilará para una arquitectura de 32 bits.
* calculadora.o main.o: Archivos de objeto a enlazar.
* -o calculadora: Especifica el nombre del ejecutable de salida.

3. **Compilar el código en C:**
   ```bash
   gcc -m32 -c calculadora.c -o calculadora.o
* -c: Indica que solo se debe compilar el código sin enlazar.
* calculadora.c: El archivo que contiene el código en C.

4. **Ejecutar la calculadora:**
      ```bash
   ./calculadora

## Pruebas y Manejo de Errores
Durante el desarrollo, se realizaron pruebas exhaustivas para verificar cada operación matemática. Se validó que:
* Las operaciones básicas se realizaran correctamente.
* Se muestra el resultado esperado.
* Se maneja adecuadamente la división por cero mostrando un mensaje de error específico.
* Se muestra un mensaje de error para operadores inválidos.
