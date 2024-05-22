# Calculadora con asm y C

## Introducción

En este proyecto se desarrolló una calculadora que integra código ensamblador y C. La finalidad fue profundizar en la interacción entre ambos lenguajes, comprendiendo cómo el ensamblador maneja las operaciones aritméticas básicas y cómo se comunica con C para procesar y mostrar los resultados.

## Desarrollo
En el archivo main.asm, se definieron las operaciones aritméticas básicas y el manejo de errores. Cada operación (suma, resta, multiplicación y división) se implementó utilizando instrucciones específicas del procesador. A continuación, se describen los puntos clave:

* Suma: Se realizó con la instrucción add.
* Resta: Se realizó con la instrucción sub.
* Multiplicación: Se utilizó imul.
* División: Se implementó con idiv, incluyendo una verificación para evitar la división por cero.

Para cada operación, se incluyó un bloque de código que compara el operador proporcionado y salta a la sección correspondiente para realizar la operación. En caso de un operador inválido o una división por cero, se mostraron mensajes de error específicos.

Mientras en el archivo calculadora.c se realizó lo siguiente:

* Leer la entrada del usuario.
* Dividir la cadena de entrada en operandos y operador.
* Llamar a la función recibir_Operacion del ensamblador.
* Se utilizó fgets para leer la entrada y strtok para dividirla. Posteriormente, se convirtieron los operandos a enteros y se llamó a la función ensambladora con estos valores. Se utilizó la recomendación de la cátedra.

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

## Lecciones Aprendidas
La interacción entre C y ensamblador permitió comprender cómo se pueden llamar funciones ensambladoras desde C y cómo se pasan y reciben parámetros. El manejo de errores resaltó la importancia de gestionar adecuadamente los errores en tiempo de ejecución, especialmente en operaciones críticas como la división. La configuración del entorno demostró ser crucial para evitar errores durante la compilación y el ensamblaje. En conclusión, este proyecto proporcionó una comprensión profunda de la integración entre ensamblador y C, así como de los desafíos asociados con la configuración del entorno y el manejo de errores. La experiencia adquirida es valiosa para el desarrollo de aplicaciones que requieren operaciones de bajo nivel y optimización del rendimiento.
