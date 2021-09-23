# Programación concurrente

## Creación de procesos en C

Crearemos nuestro primer hola mundo de la concurrencia:


```python
%%writefile Hola-mundo-concurrencia/main.c

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
```

    Writing Hola-mundo-concurrencia/main.c



```python
%%script bash
gcc Hola-mundo-concurrencia/main.c -o Hola-mundo-concurrencia/main.out

./Hola-mundo-concurrencia/main.out
```

    ID proceso: 51416
    Hola soy el proceso padre!!
    ID proceso: 0
    Hola soy el proceso hijo!


---

### Fork 1

Para la creación de procesos utilizaremos la llamada al sistema `fork()`.

Al llamar la funcion `fork`nos devolvera un entero que puede tener los siguientes valores:
- Devuelve 0 al proceso hijo
- Devuelve -1 si la operacion falla.
- Devuelve id del proceso hijo al proceso padre


```python
%%writefile 1-fork1/fork1.c

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
```

    Overwriting 1-fork1/fork1.c



```python
%%script bash
gcc ./1-fork1/fork1.c -o 1-fork1/fork1.out
./1-fork1/fork1.out
```

    ID del proceso: 52415
    Proceso padre 
    ID del proceso: 0
    Proceso hijo 


----
## fork2

Tanto el proceo padre como el hijo imprimiran un mensajen, pero cada uno durmira con diferentes cantidades de tiempo. Viendo el cambio de contexto mientras uno duerme el otro imprime el mensajes.


```python
%%writefile 2-fork2/fork2.c

#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main(void){

    int i = 1;

    switch(fork()){
        // codigo para el error
        case -1 :
            perror("Error al crear el proceso");
            exit(-1);
            break;

        case 0 :
        // codigo para el proceso hijo
            while (i<=10){
                sleep (1);
                printf("\t Soy el proceso hijo: %d\n", i++);
            }
            break;

        default :
        // codigo para el padre
            while (i<=10){
                printf("Soy el proceso padre: %d\n", i++);
                sleep(2);
            }
    }

    return(0);
}
```

    Overwriting 2-fork2/fork2.c



```python
%%script bash
gcc ./2-fork2/fork2.c -o 2-fork2/fork2.out
./2-fork2/fork2.out
```

    	 Soy el proceso hijo: 1
    	 Soy el proceso hijo: 2
    	 Soy el proceso hijo: 3
    	 Soy el proceso hijo: 4
    	 Soy el proceso hijo: 5
    	 Soy el proceso hijo: 6
    	 Soy el proceso hijo: 7
    	 Soy el proceso hijo: 8
    	 Soy el proceso hijo: 9
    	 Soy el proceso hijo: 10
    Soy el proceso padre: 1
    Soy el proceso padre: 2
    Soy el proceso padre: 3
    Soy el proceso padre: 4
    Soy el proceso padre: 5
    Soy el proceso padre: 6
    Soy el proceso padre: 7
    Soy el proceso padre: 8
    Soy el proceso padre: 9
    Soy el proceso padre: 10


---
## Fork 3



```python
%%writefile 3-fork3/fork3.c

#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main (void)
{
  int i;
  int padre;

  padre = 1;
  for (i=1; i <= 3; i++)
  {
    if (padre == 1)
      {
        if (fork() == 0) /* Proceso hijo */
        {
          printf(" \tEste es el proceso hijo %d, con ID: %d y padre ID: %d\n", i, getpid(), getppid() );
          padre = 0;
        }
        else /* Proceso padre */
        {
          printf("Este es el proceso padre con ID %d\n", getpid() );
          padre = 1;
        }
      }
  }
  return 0;
}
```


```python
%%script bash
gcc 3-fork3/fork3.c
./a.out
```

     	Este es el proceso hijo 1, con ID: 23076 y padre ID: 23075
    Este es el proceso padre con ID 23075
     	Este es el proceso hijo 2, con ID: 23077 y padre ID: 23075
    Este es el proceso padre con ID 23075
    Este es el proceso padre con ID 23075
    Este es el proceso padre con ID 23075
    Este es el proceso padre con ID 23075
    Este es el proceso padre con ID 23075
     	Este es el proceso hijo 3, con ID: 23078 y padre ID: 23075


## Fork 4
Conciendo ID de los procesos.


```python
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main(void) {

    printf("ID de proceso: %d\n", getpid());
    printf("ID de proceso padre: %d\n", getppid());
    printf("ID de usuario propietario: %d\n", getuid());

    return(0);
}
```


```python
%%script bash
./4-fork4/a.out
```

    ID de proceso: 32338
    ID de proceso padre: 32337
    ID de usuario propietario: 1000


## Wait 
Espera al proceso hijo hasta que haya terminado


```python
#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <unistd.h>

int main(void)
{
  pid_t pid;
  int status, died;

  switch(pid = fork()) {

    case -1: printf(" No es posible hacer el fork...\n");
             exit(-1);

    // codigo que ejecuta el hijo
    case 0: printf("\tCódigo del hijo...\n" );
            //sleep(10);
            int i=1;
            while (i<=10){
              printf("\t\t Tarea del proceso hijo: %d (%d)\n", i++, getpid());
              sleep (1);
            }
            break;
            // exit(1);

    // codigo que ejecuta el padre
    default: printf("Código que ejecuta el padre\n %d", getpid() );
             died = wait(&status);
             printf("Terminó el proceso hijo: %d \n", died);
    }

    return(0);
}
```


```python
%%script bash
./5-wait/a.out
```

    	Código del hijo...
    		 Tarea del proceso hijo: 1 (32490)
    		 Tarea del proceso hijo: 2 (32490)
    		 Tarea del proceso hijo: 3 (32490)
    		 Tarea del proceso hijo: 4 (32490)
    		 Tarea del proceso hijo: 5 (32490)
    		 Tarea del proceso hijo: 6 (32490)
    		 Tarea del proceso hijo: 7 (32490)
    		 Tarea del proceso hijo: 8 (32490)
    		 Tarea del proceso hijo: 9 (32490)
    		 Tarea del proceso hijo: 10 (32490)
    Código que ejecuta el padre
     32489Terminó el proceso hijo: 32490 


## Wait 2


```python
#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <unistd.h>

# define NUM_PROCESOS 5
int I = 0;

void codigo_del_proceso (int id)
{
   int i;

   for (i = 0; i < 50; i++)
        printf("Proceso %d: i = %d, I = %d\n", id, i, I++ );
   exit (id);

}

int main(void)
{
    int p;
    int id[NUM_PROCESOS] = {1, 2, 3, 4, 5};
    int pid;
    int salida;

    for (p = 0; p < NUM_PROCESOS; p++) {
      pid = fork();
      if  (pid == -1){
          perror("Error al crear un proceso: ");
          exit(-1);
      }
      else if (pid == 0) /* codigo proceso hijo */
          codigo_del_proceso (id[p]);
    }

    // codigo proceso padre
    for (p = 0; p < NUM_PROCESOS; p++) {
        pid = wait(&salida);
        printf("Proceso %d con id = %x terminado\n", pid, salida >> 8);
    }

    return(0);
}
```

## Wait 3


```python
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main(void)
{
   int i;
   int a,b;
   pid_t pidh1,pidh2,pidx;
   int prod,mayor;
   int res;

   printf("\nDame dos enteros: \n");
   scanf("%d%d", &a, &b);
   pidh1 = fork();

// código del padre
   if(pidh1)
   {
      pidh2 = fork();
      if(pidh2)
      {
        for(i = 0; i < 2; i++)
        {
           pidx = wait(&res);
           printf("res1: %d\n", res);
        if (pidx == pidh1) {
             prod = res >> 8;
             printf("res >>:%d\n", res >> 8);
             printf("entro");
        }
           else
             mayor = res >> 8;
        }
        printf("\n El producto de %d y %d es %d", a,b,prod);
        printf("\n El mayor de %d y %d es %d \n", a,b,mayor);
      }

      else
      {
         if(a > b)
           exit(a);
         else
           exit(b);
      }
   }
// hijo 1
   else
      {
     prod = a * b;
    printf("prod: %d\n", prod);
     exit(prod);
      }

  return(0);

 }
```

## Comunicación entre procesos


```python
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

int main(void)
{
   int pid,
       pipefd[2];
    
    char mensaje1[20],
         mensaje2[20];

    pipe(pipefd);
    pid = fork();
    if (pid) {
       printf("\n Soy el padre, dame mensaje:");
       gets(mensaje1);
       
       write(pipefd[1], mensaje1, strlen(mensaje1)+1);
       close(pipefd[0]);

       //write(pipefd[1], mensaje1, strlen(mensaje1)+1);
    }
    else{
       printf("\n Soy el hijo, ");
       //close(pipefd[1]);
       read(pipefd[0], mensaje2, 20);
       close(pipefd[1]);
       printf(" mensaje recibido: %s\n", mensaje2);
    }

   return(0);
}
```

## Comunicación entre procesos 2


```python
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
```

## Hilos


```python
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <pthread.h>

void *hola(void *arg)
 {
   char *msg = "Hola";
   int i;
   for ( i = 0 ; i < strlen (msg) ; i++ ) 
   {
      printf (" %c", msg[i]);
      fflush (stdout );
      usleep (1000000) ;
   }
   return NULL;
}

void *mundo(void *arg )
{
   char *msg = " mundo ";
   int i;
   for ( i = 0 ; i < strlen (msg) ; i++ ) 
   {
      printf (" %c", msg[i]);
      fflush (stdout );
      usleep (1000000) ; 
   }
   return NULL;
}

int main(int argc , char *argv []) 
{
   pthread_t h1;
   pthread_t h2;
   pthread_create(&h1, NULL , hola , NULL);
   pthread_create(&h2, NULL , mundo , NULL);
   pthread_join(h1, NULL);
   pthread_join(h2, NULL);
   printf ("Fin\n");
}

```
