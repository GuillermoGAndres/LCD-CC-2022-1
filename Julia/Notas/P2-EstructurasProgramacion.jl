### A Pluto.jl notebook ###
# v0.16.4

using Markdown
using InteractiveUtils

# ╔═╡ 37767f76-322d-11ec-0691-c3ac382ddf08
using PlutoUI

# ╔═╡ 06d9db57-9cd3-4315-811d-a0d746c69984
using LinearAlgebra

# ╔═╡ 27763466-1543-44b7-b70c-81bdfb3a7de7
md"
# Estructuras de programación
"

# ╔═╡ 8cab83c1-ef99-4ec8-9c9a-b0e6dcfe6414
md"
A continuación se revisarán las estructuras de programación basícas que son comunes a muchos lenguajes, algunos tipos de datos predifinidos en Julia y se hará énfasis en la construcción de arreglos y vectores, así como algunas operaciones básicas.
"

# ╔═╡ 2374dde2-634d-4508-a313-ec6736b14399
PlutoUI.TableOfContents()

# ╔═╡ f0643f9f-e76b-450a-a1c3-a872ff2871c5
md"
## Estructuras de control
"

# ╔═╡ 6bc05c50-4664-4200-90db-1c34da70b41a
md"
### Condicionales
"

# ╔═╡ 600e586b-9273-49f9-9bc2-9e7605a7eec1
md"
La sintáxis para una expresión condicional incluye la palabra reservada `if` y es:
```julia
if <condición1>
   <opción1>
elseif <condición2>
   <opción2>
else
   <opción3>
end
```
"

# ╔═╡ 70b13782-529b-4b21-8953-9079d0324cf4
md"
**Ejercicio:** Dado un número se desea saber si es divisible entre 3, 5 o ambos.
"

# ╔═╡ 2665c4dd-0ce9-4a1a-b420-bfdf8ed52eed
n = 15

# ╔═╡ c99e84ed-6a46-4f42-afbe-3c349431acd9
if (n % 3 == 0) & isequal(n % 5, 0)
    Print("Divisible entre 3 y 5")
elseif n % 3 == 0
    Print("Divisible entre 3")
elseif n % 5 == 0
    Print("Divisible entre 5")
else
    Print(n)
end

# ╔═╡ 28b10b8e-25b0-4b83-ac62-862bbd00886e
md"
La función `isequal()` es equivalente al operador `==`.

Una forma alternativa de escribir un condicional es por medio de **operadores ternarios**:
```julia
a ? b : c
```
lo que equivale a:
```julia
if <a>
   <b>
else
   <c>
end
```
"

# ╔═╡ cdbc7eab-f210-4017-bbab-888b889f4a6f
begin
   x = 3
   y = 100
   (x > y) ? x : y
end

# ╔═╡ 549c4047-b4a9-4a60-a359-976342fe6e61
md"
### Corto circuito
El operador `&` hace la evaluación de dos expresiones booleanas por medio de la operación `AND`. El operador `&&` hace la misma evaluación pero en caso que la primera evaluación sea `false` no hace la segunda evaluación.
"

# ╔═╡ feb8019f-f99c-4df4-b06b-6b712067aed8
# operador para AND
false & true

# ╔═╡ 2181e14a-ae14-4533-80ce-04dbf46471d3
# operador corto-circuito para AND
false && true

# ╔═╡ 5d295fc8-850b-4b91-9b38-996c5cfb448d
false && (true, Print("Hola"))

# ╔═╡ 978668b7-91d1-4316-b006-a87011cd31c9
true && (true; Print("Hola"))

# ╔═╡ 060d04a4-f12a-4216-88bf-a0b1d4f31909
md"
Por otra parte, el operador `&&` no requiere que la segunda expresión devuelva el valor de `true` o `false`, por ejemplo
"

# ╔═╡ 77db814d-f963-4731-b6a4-dcbc81c952d7
begin
   x1 = 5
   (x1 > 0) && Print("x no puede ser mayor que 0")
end

# ╔═╡ 98a362fe-c4e5-42f4-9594-35e96657d207
(x < 0) && (true; Print("x no puede ser mayor que 0"))

# ╔═╡ 1af3a54f-9c9c-4d23-b72a-ae5053780205
md"
De forma similar, el operador `||` es utilizado para hacer la evaluación de corto circuito de la operación `OR`. Dado un `true` en la primera expresión no se evalúa la segunda:
"

# ╔═╡ 0f527b8f-8faf-49bc-934b-233aa1c3f227
# operador para OR
true | false

# ╔═╡ 594a931c-fcd9-46fd-8f9e-8fa66f9b8e33
# short circuit operador para OR 
true || false

# ╔═╡ 9bfabc8c-cfc9-4b49-878e-2cd2de99210f
true || Print("hola")

# ╔═╡ 2acc10fa-521e-4d26-9daf-ce7d7468f96b
false || Print("hola")

# ╔═╡ ed299959-019f-462e-9ac4-605b9483f7e8
md"
### Ciclo `while`

La sintáxis para un ciclo `while` es:
```julia
while <condition>
    <loop body>
end
```
"

# ╔═╡ 7afdef1d-183e-4a78-815f-86abb8d37a3f
with_terminal() do
   n1 = 0
   while n1 < 10
      n1 += 1
      println(n1)
   end
end

# ╔═╡ 481cf96a-88fc-438a-876a-0d36bcebc869
with_terminal() do
  misamigos = ["Marco", "Pamela", "Héctor", "Jacqueline"]
  i = 1
  while i <= length(misamigos)
    amigo = misamigos[i]
    println("Hola $amigo, ¿qué tal estás?")
    i += 1
  end
end

# ╔═╡ fb13e3de-a366-47cc-9990-c8c61d3f8bab
md"
### Ciclo for
La sintáxis para un ciclo `for` es:
```julia
for <var> in <loop iterable>
    <loop body>
end
```
"

# ╔═╡ 2f2cb73c-332f-4437-9199-bffc713e184f
with_terminal() do
  for n in 1:10
    println(n)
  end
end

# ╔═╡ 8cc1b564-6c56-45d6-9adf-209f6647d100
with_terminal() do
	misamigos = ["Daniela", "Raul", "Raquel", "Giovanni", "Fabian"]
	for nombre in misamigos
    	println("Hola $nombre, ¿qué tal?")
	end
end

# ╔═╡ bd42c488-56b7-4bcc-abfc-a661c0e56c6b
md"
>  En Pluto los bloques `for` y `while` devuelven el valor `nothing`. Esto es, el bloque se ejecuta múltiples veces por lo que al finalizar no conoce el valor específico a devolver. En los casos anteriores la función `Print()` no surte ningún efecto dentro dentro de Pluto.
"

# ╔═╡ f8652898-0d6a-4313-85bd-f28e5ef69c66
md"
Una alternativa en Pluto para escribir el contenido de un ciclo es utilizar la función `map()` y desplegar los resultados intermedio con texto markdown.
"

# ╔═╡ f7984a3f-44fe-4a06-931d-4e8e38b313a2
map(1:5) do i
    md"Hola_$i"
end

# ╔═╡ 4c50a67a-efe1-40ad-86a8-71d89a857d64
md"
## Estructuras de datos
En Julia las estructuras de datos funcionan como colectores de elementos, las estructuras básicas son:
- **Tuplas:** ordenadas, inmutables
- **Diccionarios:** desordenadas (*unordered*), mutables, similares a las _hash tables_ 
- **Arreglos:** ordenadas, mutables
"

# ╔═╡ b3a0c70b-c46f-4f9f-85df-63e166fd8623
md"
### Tuplas
La sintaxis es:

   `(item1, item2, ...)`

Las tuplas son *inmutables*, una vez que son creadas no pueden ser modificadas.
"

# ╔═╡ a4d23f00-f0b7-4335-a2ed-185404ee3376
mismascotas = ("alpha", "yanina", "renata")

# ╔═╡ 9aebf1b4-da1b-4faa-b26c-99f104a3dbd9
# indexado
mismascotas[1]

# ╔═╡ 43e99001-787e-4f02-90f5-60de8e8eb43a
mismascotas[2]

# ╔═╡ da4bfc70-e792-4f60-baf0-9117da0ed1c1
mismascotas[1] = "camaleón"

# ╔═╡ b5bf8e5e-419f-4e62-9370-ac2dd6f5af41
md"
Las tuplas son *objetos inmutables*, una vez que son creadas no pueden ser modificadas.
"

# ╔═╡ b4a5993c-eca3-40cc-9a50-14ab36cb696c
md"
### Tuplas nombradas
Las tuplas nombradas (*named tuples*) son un nuevo tipo de tupla implementado en la versión 1.0 de Julia. Cada elemento de la tupla tiene un nombre al cual se le asigna un valor.

La sintaxis de este tipo de tupla es:

`(name1 = item1, name2 = item2, ...)`

"

# ╔═╡ 71f23660-c4e5-4d46-9d92-9e72a45e5962
mismascotas_nt = (perro = "alpha", gato = "yanina", tortuga = "renata")

# ╔═╡ 1dc96d87-f2de-4a5d-a29d-de37c9cbf1ae
typeof(mismascotas_nt)

# ╔═╡ bd9aeac4-9bbf-4fcf-8005-8abcf51b701d
# recupera elemento por índice
mismascotas_nt[1]

# ╔═╡ 312c1fbb-1317-407d-be3e-ce2b58b0959c
# recupera elemento por el nombre
mismascotas_nt.gato

# ╔═╡ 0ec7f96a-fbc6-4a09-9ce8-7cc99df45dfc
md"
### Diccionarios
Usualmente los diccionarios se utilizan cuando se tienen dos conjuntos de datos los cuales están interrelacionados. Los diccionarios se construyen usando la función `Dict()`, la inicialización puede ser un diccionario vacío. La sintaxis es:

`Dict(key1 => value1, key2 =>value2, ...)`

Un ejemplo del uso de un diccionario es una lista de contactos que asocia nombre con números telefónicos:
"

# ╔═╡ 6fa4cb56-d467-4476-828b-459bc29e456c
miscontactos = Dict("Ricardo" => "867-5309", "Pizza Hut" => "555-2368")

# ╔═╡ 1087c14c-1a77-4783-9ecd-75440f32d84d
# inicializa un diccionario vacío
midict = Dict()

# ╔═╡ d28bdcf7-9403-4f9e-8cc8-5ed1a5747855
# indexado por llave
miscontactos["Ricardo"]

# ╔═╡ fc160829-1b89-4cfc-983c-0a26678935d1
# agrega un elemento al diccionario
miscontactos["Chloe"] = "321-7562"

# ╔═╡ fe49a978-1c16-4918-94ab-f6461e364f72
miscontactos

# ╔═╡ b7d411e4-1b61-4b8b-a632-df4ba2114601
md"
Para eliminar un elemento del diccionario se utiliza la función `pop!`
"

# ╔═╡ b9ae32b9-7113-4d04-ad77-14053547ddb1
pop!(miscontactos, "Pizza Hut")

# ╔═╡ c560d734-f823-4687-856d-3a1553e34920
miscontactos

# ╔═╡ e745680e-82a2-4e7c-8072-e14311a1a8e1
md"
### Arreglos
Un arreglo o  _Array_ es una estructura de datos que equivale a las listas de Python y a los arreglos de `numpy`.
En Julia los arreglos son estructuras **modificables** (_mutable struct_) que contienen colecciones de datos ordenados. La construcción de un Array se hace por medio del uso de `[ ]`.
La sintaxis es:

`[item1, item2, ...]`
"

# ╔═╡ 8db633f9-843e-4c71-94ec-51076c2a9d17
misamigos = ["Julio", "Marco", "Victor", "Cesar", "Manuel"]

# ╔═╡ b9ea4597-56a8-4d09-b4ed-7d139fe48078
typeof(misamigos)

# ╔═╡ daa7b8d6-86c4-4a34-b12f-a3b920794093
md"
`Array{String, 1}` denota que se trata de un arreglo unidimensional con tipo de datos `string`. Por otra parte, cabe resaltar que Julia considera los arreglos  como **vectores** en el sentido estrictamente matemático.
"

# ╔═╡ 191b45fd-4358-4330-a403-0fe8407ce3fa
# indexado del array
misamigos[2]

# ╔═╡ 4fbc085d-f1c2-4669-8acd-5bc647e32c14
# modifica el array usando el índice
misamigos[4] = "Héctor"

# ╔═╡ ce0f18a6-0412-4eb8-92f8-cfad1da0a56c
misamigos

# ╔═╡ 4e98db69-6df2-4f57-b4e5-90efca46c576
fibonacci  = [1, 1, 2, 3, 5, 8, 13]

# ╔═╡ 9e2fbd4e-6778-4125-abf3-b023bcf0e0c9
typeof(fibonacci)  # arreglo de enteros

# ╔═╡ d6e47ca9-e1bc-424a-aae0-811e89b1e41e
md"
Los arreglos pueden contener valores no homogéneos
"

# ╔═╡ 85a322af-ba66-4f66-8699-f380c83e1d36
miarreglo = [1, 1, 2, 3, "cinco", "ocho", "trece"]

# ╔═╡ 25dd94a1-f657-4a95-a51e-fc8b7b31a6ae
l = [3, 4, 5]

# ╔═╡ 79439e7c-602d-4a07-b4ea-3aa0027b1a24
l1 = [3, 4, 7.5] # promueve a float

# ╔═╡ 69b54c93-5efe-439f-8bfe-0c38b18a58b7
l2 = [3.,"hello"]

# ╔═╡ 3dac036c-9dda-43c9-a6ec-406f0d5b764c
typeof(l2)  # promueve a Any

# ╔═╡ dea1e95f-2f41-40b4-9490-2c4025f8f34a
l3 = [3.,'a']

# ╔═╡ 22e3ec16-5f2f-4aa4-942b-44d10f65c671
l4 = [3., 4, "hello", [3, 4]]

# ╔═╡ ef39cc68-ed41-4e4f-8659-4adac248b19d
md"
Los ejemplos anteriores son arreglos de escalares, sin embargo, los arreglos pueden tener un número arbitrario de dimensiones y pueden almacenar otros arreglos
"

# ╔═╡ c698809f-1978-4ef6-8667-a92d5567184f
# arreglo de arreglos de cadenas
favoritos = [["chocolate", "almendras", "pistache"], ["gato", "perro", "patito"]]

# ╔═╡ c8362dcc-d3dc-4027-8b9e-fd741118ef1d
typeof(favoritos)

# ╔═╡ 94d41376-9d0f-4320-b06a-95ba40a09ed7
# arrelgo de arreglos de enteros
nums = [[1, 2, 3], [4, 5], [6, 7, 8, 9]]

# ╔═╡ 8a2f930b-26fd-4897-ae41-67e5ebeb01de
typeof(nums)

# ╔═╡ 5a5d3d61-0766-4d89-b508-94f714c7b811
md"
Los arreglos de Julia son objetos, sin embargo, a diferencia de Python, no tienen métodos implementados. La función `push()` más el signo de admiración `!` denota una convención en Julia que significa que esta función modificará a su argumento. Por tanto, la agregación y eliminación de elementos de un arreglo se realiza por medio de las funciones `push!()` y  `pop!()` respectivamente
"

# ╔═╡ 9c30a0d3-5cb7-448e-b3c3-65d386575333
fibonacci

# ╔═╡ 40f61250-09b0-472b-8869-69b66ae7cf83
# agrega 21 al final del array
begin
  push!(fibonacci, 21 )
  fibonacci
end

# ╔═╡ 7e69113e-d01b-4031-bd24-a7090a39a86e
# remueve 21, el último elemento del array
begin
   pop!(fibonacci)
   fibonacci
end

# ╔═╡ 172af773-5a9f-48cc-8567-b7e2695d04dc
md"
La función `push!()` tiene diferentes implementaciones que operan para distintos tipos de datos. Con la función `methods()` podemos inspeccionar las implementaciones de cualquier función en Julia
"

# ╔═╡ f548b6ad-5e99-46be-9b61-3e8a923eccad
methods(push!)

# ╔═╡ 5aa159b7-00c2-4320-9e63-5b3378c49a34
md"
A través del enlace es posible acceder al código que implementa un método de la función `push!()`.
Otra función que modifica un array es la función `append()!`:
"

# ╔═╡ 33523efa-5e22-42e1-a2b6-97594497d34f
append!(l, [10, 11, 12])

# ╔═╡ ddfcbdf2-8e08-44ad-9406-e83c0dbce434
l

# ╔═╡ 4865cbf6-02d0-4b37-8786-21b5b9b27bf6
md"
Julia permite crear arreglos de tipo 2D y 3D+, comúnmente inicializados con números aleatorios
"

# ╔═╡ 08466cad-25e1-43bd-ab35-f6441e2c3fb9
ll = rand(4, 3)

# ╔═╡ c115b436-5943-4c3a-b55a-6789ce98a378
typeof(ll)

# ╔═╡ 4e3534aa-85bf-4da6-8534-31551be648be
lll = rand(4, 3, 2)

# ╔═╡ 1239cade-df08-4a46-a659-e366a9532924
typeof(lll)

# ╔═╡ f5406c52-ffe5-4d6e-81e6-3706121ccf70
md"
La función `rand()` genera arreglos con valores aleatorios dentro del rango `[0,1]`. También es posible agregar el rango de elementos a la construcción de un arreglo aleatorio.
"

# ╔═╡ 44f6340e-664a-4cf8-898f-ca614359ee06
rand(-10:10, 4, 3)

# ╔═╡ e9bed9a9-5667-4881-b3f6-bbb7009f72d5
rand(0:10, 4,3,2)

# ╔═╡ 3373579d-db81-4300-aaa1-9efa07aa2226
md"
#### Comprehensión de arreglos
Esta es una forma eficiente de construir arreglos bidimensionales o de mayor dimensión. Por ejemplo, se desea construir una tabla de suma (_addition table_) en la que cada entrada es la suma de sus correspondientes índices de renglón y columna.
Como primera aproximación se crea un arreglo bidimensional con valores iniciales cero; posteriormente por medio de un ciclo `for` se suman los ìndices y el resultado se coloca en cada entrada del arreglo.
"

# ╔═╡ aa6f4c68-3c8c-40b7-9b07-9bf838674406
begin
	mm,nn = 5,5
	A = fill(0, (mm,nn))
end

# ╔═╡ 807f7dbc-e26a-4f0f-8e3f-84593b07f084
begin
	for i in 1:mm
    	for j in 1:nn
        	A[i,j] = i + j
    	end
	end
	A
end

# ╔═╡ c87a2ab4-9fe4-49b0-bad2-db24e428b4f7
md"
De forma equivalente, es posible reducir los dos ciclos anteriores en una sola instrucción:
"

# ╔═╡ 352a351c-5e55-4c52-b0d3-70702233ea7e
begin
	B = fill(0, (mm,nn))
	for i in 1:mm, j in 1:nn
        B[i,j] = i + j
	end
	B
end

# ╔═╡ 7fa97b61-93e5-49c1-9c65-1eef0f06349f
md"
Una forma más ``Juliana'' de construir una _addition table_ es por medio de la **comprehensión de arreglos** siguiente:
"

# ╔═╡ 2b49fc14-327d-4ac6-accf-4f9827dad556
C = [i + j for i in 1:mm, j in 1:nn]

# ╔═╡ d0eb777e-58d6-4740-bbc2-6885f7a923ed
md"
Esta comprehensión de arreglos es equivalente a la _comprehensión de listas_ de python.
"

# ╔═╡ ef0dd19f-07e4-4d42-91fc-97467516178a
md"
#### Copia de arreglos
"

# ╔═╡ 8ed41f43-b193-42e0-a557-85abc48c2b6a
fibonacci

# ╔═╡ 3d985e08-b298-4387-b4d0-a60ea2f545b1
misnum = fibonacci

# ╔═╡ ddb74e3b-e07f-4d89-82ba-fb9998161f9c
begin
	misnum[1] = 50
	misnum
end

# ╔═╡ 9b89826c-4f36-45df-99e8-a60f90d3e448
fibonacci

# ╔═╡ b44b4f21-ffbc-4376-9f20-70b0c37d5829
md"
Editar la copia de un arreglo modifica el original, esto se entiende debido a Julia sólo asigna un nuevo nombre a un arreglo existente .`fibonacci` es modificado al asignar valores a `misnum`.

**No se hace una copia** de `fibonacci`, tan solo se ha creado un nuevo acceso a este arreglo por medio de `misnum`. Una copia de un arreglo se hace por medio de la función `copy()`.
"


# ╔═╡ 8746c6a8-78e1-4cf7-86f2-161e5d38ac08
begin
	fibonacci[1] = 1
	fibonacci
end

# ╔═╡ acccb0a7-e774-44b0-8ec8-52957dc8c7c2
begin
	misnum_new = copy(fibonacci)
	misnum_new
end

# ╔═╡ 22cb193e-7cda-445f-8e5a-5f5ce89122e7
begin
	misnum_new[1] = 50
	misnum_new
end

# ╔═╡ db51a0de-6c37-4a7b-8ef3-4e33cae6640f
fibonacci

# ╔═╡ 9caf5b9c-b929-43f1-89b3-a55f6b2a9887
md"
#### Operaciones con arreglos
Julia provee diversas operaciones predefinidas que resultan muy útiles para operar sobre arreglos.
"

# ╔═╡ e2b5a29a-c22d-4db3-8deb-d563af63abda
begin
	a = [1.1, 2.2, 3.3]
	b = [4.4, 5.5, 6.6]
end

# ╔═╡ c502caf0-e603-426a-93de-02fee8bbe39b
a + b  # suma elemento a elemento

# ╔═╡ 2f7dcd3b-9319-4f72-b6cf-97f05d243305
a * 3.5  # multiplica por escalar

# ╔═╡ 5b77644e-7c97-4971-950b-6fc380a5fcc2
md"
Sin embargo, no todos los operadores en Julia están definidos para operar con arreglos como sucedería con los arreglos de `numpy` de python, que podría operar _elemento a elemento_.
"

# ╔═╡ 18817711-0952-4766-820c-744da29a251d
a * b

# ╔═╡ 18855dde-4ba8-4d69-b4df-e926cbae306c
md"
No obstante, las operaciones _elemento a elemento_ pueden forzarse anteponiendo el símblolo `.` (tipo sintaxis de _Matlab_):
"

# ╔═╡ b45ec548-85ea-455a-9ba6-9cfd84ca0598
a.*b

# ╔═╡ 7df2bc35-497f-472a-8790-872ef3c04e65
md"
#### Vectores
Julia considera las arreglos numéricos como **vectores** debido a su concepción escencialmente matemática. Los vectores podrán ser operados por medio de funciones y operadores algebráicos para los cuales tenga sentido una operación vectorial. Julia privilegia los vectores columna al construir arreglos numéricos.
"

# ╔═╡ 9573e481-d05e-45e5-b086-0db6dc1130da
c = [2, 3, 5] 


# ╔═╡ 7f5d62e9-1036-4ba0-841b-2a69e77a1223
md"
Algunas funciones para operar con vectores están contenidas en el paquete `LinearAlgebra`
"

# ╔═╡ 5d671a45-8d6d-423d-9c50-730c6c49c4c6
a

# ╔═╡ 54ab8fd0-aab7-4d32-8959-7cb67f9a3040
b

# ╔═╡ d71df740-76ae-4f7d-bcf9-cb2c0952ce2a
dot(a,b)   # producto punto

# ╔═╡ e1fde470-111b-4b6c-bf35-1d4eac5220dd
cross(a,b)  # producto cruz

# ╔═╡ dbccf0c1-6384-4dcc-9d6d-ce8ada6c05ff
md"
En Pluto es posible consultar la documentación de las funciones de `LinearAlgebra` mediante el uso de **Live docs**. Al activar **Live docs** se despliega automáticamene información sobre las funciones predefinicas utilizadas en una celda
"

# ╔═╡ 50df5a54-c4d2-4fc1-b2b6-6dce40a78f4c
norm(a)

# ╔═╡ 9c9ad4f8-b52b-4cfa-9978-2fca76b88f5f
d = [22, 33, 44] 

# ╔═╡ cfe6b722-e296-4ece-b94d-e0d4fe380233
dt = transpose(d)

# ╔═╡ 0ec7c31c-85b0-46c7-aa5c-3763a9671444
d' # equivalente a transpose()

# ╔═╡ d718f96e-fd1f-42ce-9ab6-7ab19fc257b2
md"
#### Construcción de vectores y matrices
"

# ╔═╡ 2789f3e8-ee00-4c19-8a5b-c84e485249f5
# las comas distribuyen verticalmente

vc = [2, 3, 4, 5] # vector columna

# ╔═╡ 82383edc-b690-41e5-bfe3-9807dc1fc2b9
# los espacios distribuyen horizontalmente

vr = [2 3 4 5]  # vector renglón

# ╔═╡ 6867ab28-52fe-4ef0-ad52-f8522efd56c2
[x for x in 1:15]  # comprehensión de arreglos 

# ╔═╡ a11754ab-5e46-4bde-af37-d844ba17fbc2
md"
Los corchetes construyen arreglos:
"

# ╔═╡ 1cc0f1ac-5b3a-4611-b6d3-4ae7d1e6c739
vvr= [[1 2], [3 4]] # vector de vectores renglón

# ╔═╡ 8be20118-2761-4e9a-a2ae-2463ad8394c4
vvc = [[1, 2], [3, 4]] # vector de vectores columna

# ╔═╡ 71fa6413-524f-4632-8d5a-1be7eff3c496
vr2 = [[1, 2]; [3, 4]] # vector renglón 

# ╔═╡ 83c507ef-c751-4f59-9a5c-390803f85fd3
vrvc
= [[2, 1] [3, 1]] # vector renglón de vectores columna (matriz)

# ╔═╡ 35b55d08-dd33-46e7-849a-11ae165704ad
md"
Con la función `reshape()` se ajustan las dimensiones de un vector, por ejemplo, a las dimensiones de una matriz:
"

# ╔═╡ c573516e-2400-4123-8194-1ae16b35f03e
 vcvr = [1 2 ; 3 4] # vector columna de vectores renglón (matriz)

# ╔═╡ 0c81fe99-9a39-4d7b-b57b-fc652e56cc24
vrs = reshape([1, 2, 3, 4], (2,2))

# ╔═╡ 2794ff5a-a8f6-4528-a6aa-0e798dc260b6
md"
Vectores columna construidos por medio de un **rango de valores** proporcionado:
"

# ╔═╡ 2203a016-3372-41af-8522-780daf4162d4
vvs = [1:8;] # semicolon ; es importante

# ╔═╡ de72c3ca-a4de-4c6f-b469-b659bbea556c
vvs10 = [1:8;10] 

# ╔═╡ 829b676f-dd15-4ba0-923c-45277eac820f
typeof([1:8;])

# ╔═╡ f633d8ff-ba03-4ba8-a48a-118f57d0191b
md"
La función `collect()` devuelve un vector con los elementos del rango proporcionado:
"

# ╔═╡ fab3b565-a4b4-4e7f-bdaf-984bea96dcc9
vvco = collect(1:8) 

# ╔═╡ 8af0a8df-7244-4da8-b109-895788160047
typeof(collect(1:8))

# ╔═╡ ce949c0d-5a9f-4d0b-9c21-d491588df271
mrs = reshape([1:8;], (2,2,2)) 

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.19"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

[[AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "0bc60e3006ad95b4bb7497698dd7c6d649b9bc06"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.1"

[[ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[HypertextLiteral]]
git-tree-sha1 = "2b078b5a615c6c0396c77810d92ee8c6f470d238"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.3"

[[IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "8076680b162ada2a031f707ac7b4953e30667a37"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.2"

[[LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"

[[LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"

[[LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"

[[Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[LinearAlgebra]]
deps = ["Libdl"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[Parsers]]
deps = ["Dates"]
git-tree-sha1 = "ae4bbcadb2906ccc085cf52ac286dc1377dceccc"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.1.2"

[[Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "e071adf21e165ea0d904b595544a8e514c8bb42c"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.19"

[[Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[Random]]
deps = ["Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
"""

# ╔═╡ Cell order:
# ╟─27763466-1543-44b7-b70c-81bdfb3a7de7
# ╟─8cab83c1-ef99-4ec8-9c9a-b0e6dcfe6414
# ╠═37767f76-322d-11ec-0691-c3ac382ddf08
# ╠═2374dde2-634d-4508-a313-ec6736b14399
# ╟─f0643f9f-e76b-450a-a1c3-a872ff2871c5
# ╟─6bc05c50-4664-4200-90db-1c34da70b41a
# ╟─600e586b-9273-49f9-9bc2-9e7605a7eec1
# ╟─70b13782-529b-4b21-8953-9079d0324cf4
# ╠═2665c4dd-0ce9-4a1a-b420-bfdf8ed52eed
# ╠═c99e84ed-6a46-4f42-afbe-3c349431acd9
# ╟─28b10b8e-25b0-4b83-ac62-862bbd00886e
# ╠═cdbc7eab-f210-4017-bbab-888b889f4a6f
# ╟─549c4047-b4a9-4a60-a359-976342fe6e61
# ╠═feb8019f-f99c-4df4-b06b-6b712067aed8
# ╠═2181e14a-ae14-4533-80ce-04dbf46471d3
# ╠═5d295fc8-850b-4b91-9b38-996c5cfb448d
# ╠═978668b7-91d1-4316-b006-a87011cd31c9
# ╟─060d04a4-f12a-4216-88bf-a0b1d4f31909
# ╠═77db814d-f963-4731-b6a4-dcbc81c952d7
# ╠═98a362fe-c4e5-42f4-9594-35e96657d207
# ╟─1af3a54f-9c9c-4d23-b72a-ae5053780205
# ╠═0f527b8f-8faf-49bc-934b-233aa1c3f227
# ╠═594a931c-fcd9-46fd-8f9e-8fa66f9b8e33
# ╠═9bfabc8c-cfc9-4b49-878e-2cd2de99210f
# ╠═2acc10fa-521e-4d26-9daf-ce7d7468f96b
# ╟─ed299959-019f-462e-9ac4-605b9483f7e8
# ╠═7afdef1d-183e-4a78-815f-86abb8d37a3f
# ╠═481cf96a-88fc-438a-876a-0d36bcebc869
# ╟─fb13e3de-a366-47cc-9990-c8c61d3f8bab
# ╠═2f2cb73c-332f-4437-9199-bffc713e184f
# ╠═8cc1b564-6c56-45d6-9adf-209f6647d100
# ╟─bd42c488-56b7-4bcc-abfc-a661c0e56c6b
# ╟─f8652898-0d6a-4313-85bd-f28e5ef69c66
# ╠═f7984a3f-44fe-4a06-931d-4e8e38b313a2
# ╟─4c50a67a-efe1-40ad-86a8-71d89a857d64
# ╟─b3a0c70b-c46f-4f9f-85df-63e166fd8623
# ╠═a4d23f00-f0b7-4335-a2ed-185404ee3376
# ╠═9aebf1b4-da1b-4faa-b26c-99f104a3dbd9
# ╠═43e99001-787e-4f02-90f5-60de8e8eb43a
# ╠═da4bfc70-e792-4f60-baf0-9117da0ed1c1
# ╟─b5bf8e5e-419f-4e62-9370-ac2dd6f5af41
# ╟─b4a5993c-eca3-40cc-9a50-14ab36cb696c
# ╠═71f23660-c4e5-4d46-9d92-9e72a45e5962
# ╠═1dc96d87-f2de-4a5d-a29d-de37c9cbf1ae
# ╠═bd9aeac4-9bbf-4fcf-8005-8abcf51b701d
# ╠═312c1fbb-1317-407d-be3e-ce2b58b0959c
# ╟─0ec7f96a-fbc6-4a09-9ce8-7cc99df45dfc
# ╠═6fa4cb56-d467-4476-828b-459bc29e456c
# ╠═1087c14c-1a77-4783-9ecd-75440f32d84d
# ╠═d28bdcf7-9403-4f9e-8cc8-5ed1a5747855
# ╠═fc160829-1b89-4cfc-983c-0a26678935d1
# ╠═fe49a978-1c16-4918-94ab-f6461e364f72
# ╟─b7d411e4-1b61-4b8b-a632-df4ba2114601
# ╠═b9ae32b9-7113-4d04-ad77-14053547ddb1
# ╠═c560d734-f823-4687-856d-3a1553e34920
# ╟─e745680e-82a2-4e7c-8072-e14311a1a8e1
# ╠═8db633f9-843e-4c71-94ec-51076c2a9d17
# ╠═b9ea4597-56a8-4d09-b4ed-7d139fe48078
# ╟─daa7b8d6-86c4-4a34-b12f-a3b920794093
# ╠═191b45fd-4358-4330-a403-0fe8407ce3fa
# ╠═4fbc085d-f1c2-4669-8acd-5bc647e32c14
# ╠═ce0f18a6-0412-4eb8-92f8-cfad1da0a56c
# ╠═4e98db69-6df2-4f57-b4e5-90efca46c576
# ╠═9e2fbd4e-6778-4125-abf3-b023bcf0e0c9
# ╟─d6e47ca9-e1bc-424a-aae0-811e89b1e41e
# ╠═85a322af-ba66-4f66-8699-f380c83e1d36
# ╠═25dd94a1-f657-4a95-a51e-fc8b7b31a6ae
# ╠═79439e7c-602d-4a07-b4ea-3aa0027b1a24
# ╠═69b54c93-5efe-439f-8bfe-0c38b18a58b7
# ╠═3dac036c-9dda-43c9-a6ec-406f0d5b764c
# ╠═dea1e95f-2f41-40b4-9490-2c4025f8f34a
# ╠═22e3ec16-5f2f-4aa4-942b-44d10f65c671
# ╟─ef39cc68-ed41-4e4f-8659-4adac248b19d
# ╠═c698809f-1978-4ef6-8667-a92d5567184f
# ╠═c8362dcc-d3dc-4027-8b9e-fd741118ef1d
# ╠═94d41376-9d0f-4320-b06a-95ba40a09ed7
# ╠═8a2f930b-26fd-4897-ae41-67e5ebeb01de
# ╟─5a5d3d61-0766-4d89-b508-94f714c7b811
# ╠═9c30a0d3-5cb7-448e-b3c3-65d386575333
# ╠═40f61250-09b0-472b-8869-69b66ae7cf83
# ╠═7e69113e-d01b-4031-bd24-a7090a39a86e
# ╟─172af773-5a9f-48cc-8567-b7e2695d04dc
# ╠═f548b6ad-5e99-46be-9b61-3e8a923eccad
# ╟─5aa159b7-00c2-4320-9e63-5b3378c49a34
# ╠═33523efa-5e22-42e1-a2b6-97594497d34f
# ╠═ddfcbdf2-8e08-44ad-9406-e83c0dbce434
# ╟─4865cbf6-02d0-4b37-8786-21b5b9b27bf6
# ╠═08466cad-25e1-43bd-ab35-f6441e2c3fb9
# ╠═c115b436-5943-4c3a-b55a-6789ce98a378
# ╠═4e3534aa-85bf-4da6-8534-31551be648be
# ╠═1239cade-df08-4a46-a659-e366a9532924
# ╟─f5406c52-ffe5-4d6e-81e6-3706121ccf70
# ╠═44f6340e-664a-4cf8-898f-ca614359ee06
# ╠═e9bed9a9-5667-4881-b3f6-bbb7009f72d5
# ╟─3373579d-db81-4300-aaa1-9efa07aa2226
# ╠═aa6f4c68-3c8c-40b7-9b07-9bf838674406
# ╠═807f7dbc-e26a-4f0f-8e3f-84593b07f084
# ╟─c87a2ab4-9fe4-49b0-bad2-db24e428b4f7
# ╠═352a351c-5e55-4c52-b0d3-70702233ea7e
# ╟─7fa97b61-93e5-49c1-9c65-1eef0f06349f
# ╠═2b49fc14-327d-4ac6-accf-4f9827dad556
# ╟─d0eb777e-58d6-4740-bbc2-6885f7a923ed
# ╟─ef0dd19f-07e4-4d42-91fc-97467516178a
# ╠═8ed41f43-b193-42e0-a557-85abc48c2b6a
# ╠═3d985e08-b298-4387-b4d0-a60ea2f545b1
# ╠═ddb74e3b-e07f-4d89-82ba-fb9998161f9c
# ╠═9b89826c-4f36-45df-99e8-a60f90d3e448
# ╟─b44b4f21-ffbc-4376-9f20-70b0c37d5829
# ╠═8746c6a8-78e1-4cf7-86f2-161e5d38ac08
# ╠═acccb0a7-e774-44b0-8ec8-52957dc8c7c2
# ╠═22cb193e-7cda-445f-8e5a-5f5ce89122e7
# ╠═db51a0de-6c37-4a7b-8ef3-4e33cae6640f
# ╟─9caf5b9c-b929-43f1-89b3-a55f6b2a9887
# ╠═e2b5a29a-c22d-4db3-8deb-d563af63abda
# ╠═c502caf0-e603-426a-93de-02fee8bbe39b
# ╠═2f7dcd3b-9319-4f72-b6cf-97f05d243305
# ╟─5b77644e-7c97-4971-950b-6fc380a5fcc2
# ╠═18817711-0952-4766-820c-744da29a251d
# ╟─18855dde-4ba8-4d69-b4df-e926cbae306c
# ╠═b45ec548-85ea-455a-9ba6-9cfd84ca0598
# ╟─7df2bc35-497f-472a-8790-872ef3c04e65
# ╠═9573e481-d05e-45e5-b086-0db6dc1130da
# ╟─7f5d62e9-1036-4ba0-841b-2a69e77a1223
# ╠═06d9db57-9cd3-4315-811d-a0d746c69984
# ╠═5d671a45-8d6d-423d-9c50-730c6c49c4c6
# ╠═54ab8fd0-aab7-4d32-8959-7cb67f9a3040
# ╠═d71df740-76ae-4f7d-bcf9-cb2c0952ce2a
# ╠═e1fde470-111b-4b6c-bf35-1d4eac5220dd
# ╟─dbccf0c1-6384-4dcc-9d6d-ce8ada6c05ff
# ╠═50df5a54-c4d2-4fc1-b2b6-6dce40a78f4c
# ╠═9c9ad4f8-b52b-4cfa-9978-2fca76b88f5f
# ╠═cfe6b722-e296-4ece-b94d-e0d4fe380233
# ╠═0ec7c31c-85b0-46c7-aa5c-3763a9671444
# ╟─d718f96e-fd1f-42ce-9ab6-7ab19fc257b2
# ╠═2789f3e8-ee00-4c19-8a5b-c84e485249f5
# ╠═82383edc-b690-41e5-bfe3-9807dc1fc2b9
# ╠═6867ab28-52fe-4ef0-ad52-f8522efd56c2
# ╠═a11754ab-5e46-4bde-af37-d844ba17fbc2
# ╠═1cc0f1ac-5b3a-4611-b6d3-4ae7d1e6c739
# ╠═8be20118-2761-4e9a-a2ae-2463ad8394c4
# ╠═71fa6413-524f-4632-8d5a-1be7eff3c496
# ╠═83c507ef-c751-4f59-9a5c-390803f85fd3
# ╟─35b55d08-dd33-46e7-849a-11ae165704ad
# ╠═c573516e-2400-4123-8194-1ae16b35f03e
# ╠═0c81fe99-9a39-4d7b-b57b-fc652e56cc24
# ╠═2794ff5a-a8f6-4528-a6aa-0e798dc260b6
# ╠═2203a016-3372-41af-8522-780daf4162d4
# ╠═de72c3ca-a4de-4c6f-b469-b659bbea556c
# ╠═829b676f-dd15-4ba0-923c-45277eac820f
# ╟─f633d8ff-ba03-4ba8-a48a-118f57d0191b
# ╠═fab3b565-a4b4-4e7f-bdaf-984bea96dcc9
# ╠═8af0a8df-7244-4da8-b109-895788160047
# ╠═ce949c0d-5a9f-4d0b-9c21-d491588df271
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
