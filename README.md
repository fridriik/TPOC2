## Informe sobre la Calculadora

### Paso a paso para compilar y ejecutar la calculadora:

1. **Ensamblar el código en ensamblador:**
   ```bash
   nasm -f elf main.asm -o main.o
nasm: Es el comando para ensamblar código fuente en lenguaje ensamblador.
-f elf: Especifica el formato de salida como ELF (Executable and Linkable Format).
main.asm: Es el archivo que contiene el código en ensamblador.
-o main.o: Especifica el nombre del archivo de objeto de salida.

2. **Compilar los archivos de objeto:**

bash
Copy code
gcc -m32 calculadora.o main.o -o calculadora
gcc: Es el compilador GNU C.
-m32: Especifica que el código se compilará para una arquitectura de 32 bits.
calculadora.o main.o: Archivos de objeto a enlazar.
-o calculadora: Especifica el nombre del ejecutable de salida.
Compilar el código en C:

bash
Copy code
gcc -m32 -c calculadora.c -o calculadora.o
-c: Indica que solo se debe compilar el código sin enlazar.
calculadora.c: El archivo que contiene el código en C.
Ejecutar la calculadora:

bash
Copy code
./calculadora
./: Indica que se está ejecutando un archivo en el directorio actual.
calculadora: El nombre del archivo ejecutable.
Descripción de los comandos:
nasm: Ensambla código fuente en lenguaje ensamblador.
gcc: Compilador GNU C.
-f elf: Especifica el formato de salida como ELF.
-m32: Especifica la arquitectura de 32 bits.
-c: Indica que solo se debe compilar el código sin enlazar.
-o: Especifica el nombre del archivo de salida.
