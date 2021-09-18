
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main() {
    int pid;
    // Creacion de un proceso
    pid = fork();
    printf("ID proceso: %d\n", pid);
    if (pid)
         printf("Hola soy el proceso padre!!\n");
    else        
        printf("Hola soy el proceso hijo!\n");
    return 0;
} 
