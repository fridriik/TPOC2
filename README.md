## Calculadora con asm y C

### Informe preview

### Paso a paso para compilar y ejecutar la calculadora:

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
