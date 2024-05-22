#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void LeerPregunta();

extern int recibir_Operacion(int Operando1, char Operador, int Operando2);

int main() {
    LeerPregunta();
    return 0;
}

void LeerPregunta() {
    char pregunta[50];  // Definir un buffer para almacenar la q
    int Operando1, Operando2;
    char Operador;

    // Solicitar la operación al usuario
    printf("Ingrese la operación en el formato 'Operando1 Operador Operando2': ");
    fgets(pregunta, sizeof(pregunta), stdin);  // Leer la pregunta desde la entrada estándar

    // Utilizar strtok para separar la pregunta en elementos
    char *token = strtok(pregunta, " ");
    Operando1 = atoi(token);  // Convertir el primer operando a entero
    token = strtok(NULL, " ");
    Operador = token[0];  // Obtener el operador
    token = strtok(NULL, " ");
    Operando2 = atoi(token);  // Convertir el segundo operando a entero

    // Llamar a la función en ensamblador para realizar la operación
    recibir_Operacion(Operando1, Operador, Operando2);
}
