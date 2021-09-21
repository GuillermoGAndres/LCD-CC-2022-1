# Multiprocessing

`multiprocessing` es un paquete de Python que permite la creación de procesos y ofrece concurrencia local.

Una manera sencilla de crear un proceso es por medio de la construcción de un objeto de tipo `Process` e invocarlo por medio del método `start()`.


```python
import multiprocessing as mp 

def tarea(name):
    print("Hola", name)

if __name__ == '__main__':
    p = mp.Process(target=tarea, args=('Guillermo G',))
    p.start() # Invocamos el proceso
    p.join() # Unimos al padre
```

    Hola Guillermo G


### Ejemplo 2

- La comunicacion entre procesos es transparente.
- Reparticion de tarea


```python
import multiprocessing as mp 
import time

def calc_cuad(numeros):
    print("Calcula el cuadrado de los números")
    for n in numeros:
        print("cuadrado:", n * n)

nums = range(10)
t = time.time()
p1 = mp.Process(target=calc_cuad, args=(nums,))
# Empezar el proceso
p1.start()
# Va regresar a la ejecucion al padre
p1.join() 

print("Tiempo de ejecución: ", time.time() -t)
print("Finaliza la ejecución")
```

    Calcula el cuadrado de los números
    cuadrado: 0
    cuadrado: 1
    cuadrado: 4
    cuadrado: 9
    cuadrado: 16
    cuadrado: 25
    cuadrado: 36
    cuadrado: 49
    cuadrado: 64
    cuadrado: 81
    Tiempo de ejecución:  0.0699317455291748
    Finaliza la ejecución


### Ejercicio 3  
Crea otro proceso P2 que calcule el cubo de el mismo conjunto de números `nums` y mandalos a escribir


Ejecución concurrente:


```python
def calc_cubos(nums):
    print('Calcula el cubo de los números')
    for num in nums:
        print('cubo:', num ** 3)

nums = range(5)
p1 = mp.Process(target=calc_cuad, args=(nums,))
p2 = mp.Process(target=calc_cubos, args=(nums,))
p1.start()
p2.start()
# join hace que le proceso principal espere hasta que pn haya terminado y se una con el main process
p1.join()
p2.join()
print('Termina la ejecución númerica')
```

    Calcula el cuadrado de los números
    cuadrado:Calcula el cubo de los números 
    0cubo:
     0cuadrado: 
    cubo: 11
    
    cubo:cuadrado:  8
    cubo: 27
    cubo: 64
    4
    cuadrado: 9
    cuadrado: 16
    Termina la ejecución númerica


Si no se colocan adecuadamente los joins se haria una ejecución secuencial, hace un tarea la termina e inicia la otra.


```python
def calc_cubos(nums):
    print('Calcula el cubo de los números')
    for num in nums:
        print('cubo:', num ** 3)

nums = range(5)
p1 = mp.Process(target=calc_cuad, args=(nums,))
p2 = mp.Process(target=calc_cubos, args=(nums,))
p1.start()
p1.join()
p2.start()
# join hace que le proceso principal espere hasta que p1 haya terminado y se una con el main process
p2.join()
print('Termina la ejecución númerica')
```

    Calcula el cuadrado de los números
    cuadrado: 0
    cuadrado: 1
    cuadrado: 4
    cuadrado: 9
    cuadrado: 16
    Calcula el cubo de los números
    cubo: 0
    cubo: 1
    cubo: 8
    cubo: 27
    cubo: 64
    Termina la ejecución númerica


### Ejercicio 4
1. Calcula el cuadrado y el cubo de un arreglo de tamaño $100$ de manera secuencial con funciones y calcula su tiempo de ejecución con `time.time()`.
1. Calcula el cuadrado y el cubo usando procesos y calcula el tiempo de ejecución.
1. Calcula el cuadrado y el cubo usando procesos y varia el `start` y `join` de los procesos, calcula el tiempo de ejecución.

El procesador ejecuta, pero no ocupa un espacio de procesamiento que no es utilizado.


```python
import multiprocessing as mp
import time

def calc_cuad(numeros):
    print("Calcula el cuadrado de los números")
    for n in numeros:
        time.sleep(0.2)
        print("cuadrado:", n * n)
        
def calc_cubos(nums):
    print('Calcula el cubo de los números')
    for num in nums:
        time.sleep(0.2)
        print('cubo:', num ** 3)

nums = range(5)
t = time.time()
calc_cuad(nums)
calc_cubos(nums)

print("Tiempo de ejecución: ", time.time() -t)
print("Finaliza la ejecución")
```

    Calcula el cuadrado de los números
    cuadrado: 0
    cuadrado: 1
    cuadrado: 4
    cuadrado: 9
    cuadrado: 16
    Calcula el cubo de los números
    cubo: 0
    cubo: 1
    cubo: 8
    cubo: 27
    cubo: 64
    Tiempo de ejecución:  2.0061302185058594
    Finaliza la ejecución


De manera concurrente, hace un cambio de contexto ocupando todo el espcacio de procesamiento, obliga un uso optimo de los procesos.

Vemos que se reducio a la mitad el tiempo


```python
import multiprocessing as mp
import time

def calc_cuad(numeros):
    print("Calcula el cuadrado de los números")
    for n in numeros:
        time.sleep(0.2)
        print("cuadrado:", n * n)
        
def calc_cubos(nums):
    print('Calcula el cubo de los números')
    for num in nums:
        time.sleep(0.2)
        print('cubo:', num ** 3)

t = time.time()
nums = range(5)
p1 = mp.Process(target=calc_cuad, args=(nums,))
p2 = mp.Process(target=calc_cubos, args=(nums,))

p1.start()
p2.start()

p1.join()
p2.join()

print("Tiempo de ejecución: ", time.time() -t)
print("Finaliza la ejecución")

```

    Calcula el cuadrado de los números
    Calcula el cubo de los números
    cuadrado: 0
    cubo: 0
    cuadrado: 1
    cubo: 1
    cuadrado: 4
    cubo: 8
    cuadrado: 9
    cubo: 27
    cuadrado: 16
    cubo: 64
    Tiempo de ejecución:  1.0714683532714844
    Finaliza la ejecución


## Identificadores pid, ppid
Identificadores del proceso hijo y padre.

- El proceso padre sera el que lo esta ejecutando, por ejemplo la terminal.


```python
import os
print('module name:', __name__)
print('parent process:', os.getppid())
print('process id:', os.getpid())
```

    module name: __main__
    parent process: 35358
    process id: 35583



```python
from multiprocessing import Process
import os

def info(titulo):
  print(titulo)
  print('module name', __name__)
  print('parent process', os.getppid()) # Proceso que lo ejecuta
  print('process id:', os.getpid()) # El propio proceso  

def f(nombre):
  info('function f')
  print('hello', nombre)
  print('-----')

info('Primera linea')
p = Process(target=f, args=('oscar',))
p.start()
p.join()
```

    Primera linea
    module name __main__
    parent process 35358
    process id: 35583
    function f
    module name __main__
    parent process 35583
    process id: 43980
    hello oscar
    -----


## Visibilidad variables

Cuando creamos un proceso hijo, el sistema operativo le sede algunos recuros, le ofrece el codigo al hijo, copia complemta de todo el codigo tanto de un proceos padre e hijp.

- Tambien el espacio de memoria

Podemos tener tambien memoeria distribuida.

Esto nos permite una visibilidad de las variables, ya que se copia el mismo codigo, podremos ver las misma variables.


```python
import multiprocessing as mp
import time


nums_res = []

def calc_cuad(numeros):
    # Vista por proceso hijo
    # Ver variables fuera de la funcion, debido que se copia el codigo 
    # del padre
    global nums_res
    for n in numeros:
        print('cuadrado:', n * n )
        nums_res.append(n * n)
        print("Resultado del proceso:", nums_res)


nums = range(10)

t = time.time()
p1 = mp.Process(target=calc_cuad, args=(nums,))

p1.start()
p1.join()
print("Fuera del proceso:", nums_res)

print("Tiempo de ejecución: ", time.time()-t)
print("Resultado del proceso:", nums_res)
print("Finaliza ejecución")
```

    cuadrado: 0
    Resultado del proceso: [0]
    cuadrado: 1
    Resultado del proceso: [0, 1]
    cuadrado: 4
    Resultado del proceso: [0, 1, 4]
    cuadrado: 9
    Resultado del proceso: [0, 1, 4, 9]
    cuadrado: 16
    Resultado del proceso: [0, 1, 4, 9, 16]
    cuadrado: 25
    Resultado del proceso: [0, 1, 4, 9, 16, 25]
    cuadrado: 36
    Resultado del proceso: [0, 1, 4, 9, 16, 25, 36]
    cuadrado: 49
    Resultado del proceso: [0, 1, 4, 9, 16, 25, 36, 49]
    cuadrado: 64
    Resultado del proceso: [0, 1, 4, 9, 16, 25, 36, 49, 64]
    cuadrado: 81
    Resultado del proceso: [0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
    Fuera del proceso: []
    Tiempo de ejecución:  0.1413118839263916
    Resultado del proceso: []
    Finaliza ejecución


Copia completa codigo del padre y generar un espacio de memoeria para el padre como el hijo

Por eso mismo necesitamos un mecanisco para compartir memoria.

Mecanismo de comunicacion entre el padre y el hijo.


¿Cuanto mecanis existen?
- Array of processing

References
- https://stackoverflow.com/questions/25391025/what-exactly-is-python-multiprocessing-modules-join-method-doing
- http://pymotw.com/2/multiprocessing/basics.html
- https://docs.python.org/3/library/multiprocessing.html
- https://stackoverflow.com/questions/12087742/should-i-add-a-trailing-comma-after-the-last-argument-in-a-function-call
