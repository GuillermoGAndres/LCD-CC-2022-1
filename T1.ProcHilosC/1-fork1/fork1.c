
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main(void){

    int fpid;

    fpid = fork();

    printf("ID del proceso: %d\n", fpid);

    if (fpid == 0)
        // se crea el proceso hijo
        printf("Proceso hijo \n" );
    else
        // ejecuta la continuación del proceso padre
        printf("Proceso padre \n");


    return(0);

}
