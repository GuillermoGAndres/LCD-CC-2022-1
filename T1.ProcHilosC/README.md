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



```python
ls Hola-mundo-concurrencia/
```

    [0m[01;32mmain.c[0m*  [01;32mmain.out[0m*


---

### Fork 1


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

