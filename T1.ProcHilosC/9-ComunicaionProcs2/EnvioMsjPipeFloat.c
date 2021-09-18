#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

int main(void)
{
   int pid,
       pipefd[2];

  float x,y;

    pipe(pipefd);
    pid = fork();
    if (pid) {

       printf("\n Soy el padre, dame un real:");
       scanf("%f", &x); 
       write(pipefd[1], &x, sizeof(float));
       close(pipefd[0]);
    }
    else{
       printf("\n Soy el hijo, ");

       read(pipefd[0], &y, sizeof(float));
       printf(" mensaje recibido: %f \n", y);
       close(pipefd[1]);
    }

    return(0);
}
