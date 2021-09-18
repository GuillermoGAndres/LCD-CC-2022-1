# Programación concurrente

## Creación de procesos en C

Crearemos nuestro primer hola mundo concurrente:


```python
%%writefile 1-Hola-mundo-concurrencia/main.c

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

    Overwriting 1-Hola-mundo-concurrencia/main.c



```python
%%script bash
gcc 1-Hola-mundo-concurrencia/main.c -o 1-Hola-mundo-concurrencia/main.out

./1-Hola-mundo-concurrencia/main.out
```

    ID proceso: 44166
    Hola soy el proceso padre!!
    ID proceso: 0
    Hola soy el proceso hijo!



```python
ls -l 1-Hola-mundo-concurrencia/
```

    total 25
    -rwxrwxrwx. 1 root root   319 Sep 18 14:47 [0m[01;32mmain.c[0m*
    -rwxrwxrwx. 1 root root 24456 Sep 18 14:47 [01;32mmain.out[0m*


---


```python

```
