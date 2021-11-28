### A Pluto.jl notebook ###
# v0.17.2

using Markdown
using InteractiveUtils

# ╔═╡ c655cdcd-f860-4b0d-b1e1-283a796a65a9
using PlutoUI

# ╔═╡ cc2f6ede-7ab3-4917-88f7-e194e430c3b5
PlutoUI.TableOfContents()

# ╔═╡ fabe02a2-2525-11ec-2a19-e3ea78a62670
md"
# El lenguaje de programación Julia
"

# ╔═╡ fb1b2fc7-366e-48ee-9ed2-e45698cff3ff
html"""
<p align="center">
<img width="250" height="240"
src="https://github.com/oaefbsc/Julia-IIMAS-v1.0/blob/main/julialang.png?raw=true" />
</p>
"""

# ╔═╡ 5b0c5993-1a82-413f-b62f-242c165dbe51
md"
Julia surge en 2015 en el Massachusetts Institute Technology (MIT) donde un conjunto de científicos de la computación reúnen habilidades y conocimientos para crear un lenguaje de programación con fuertes fundamentos matemáticos y orientado al cómputo científico. En pocos años, una comunidad de entusistas muy brillantes al rededor del lenguaje han colocado a Julia como un alternativa fresca, potente y libre en los lenguajes de programación modernos. Julia es lenguaje sencillo de aprender, expresivo y altamente eficiente.
Los co-creadores principales de Julia:
- [Alan Edelman](https://math.mit.edu/directory/profile?pid=63): Profesor del MIT y jefe del Laboratorio de Ciencias de la Computación e Inteligencia Artificial del MIT.
- [Jeff Bezanson](https://twitter.com/jeffbezanson): Científico de la computación, resposable técnico de desarrllo en [Julia Computing Inc.](https://juliacomputing.com)
- [Estefan Karpinski](https://karpinski.org): Científico de datos e ingeniero de software es co-fundador de Julia Computing Inc.
- [Viral Saha](https://qz.com/india/963225/julia-an-indian-computer-scientist-built-a-new-programming-language-from-bengaluru/): Presidente ejecutivo de Julia Computing Inc.
fusionaron esfuerzos y enfocaron su talento en re-diseñar los lenguajes de alto rendimiento.

Es nuestro deseo unirnos a esta creciente comunidad de _Julianos_ al transmitir a estudiantes, profesores, investigadores y otros apasionados del código de nuestra comunidad universitaria una visión lo más clara y actualizada posible de este magnífico lenguaje de programación.

El reconocimiento y autoría de este micro-curso corresponde a la comunidad talentosa de colaboradores de Julia que han difundido por diversos medios cursos, talleres, manuales y código principalmente ; además de aquellos desarrolladores de paquetes y bibliotecas para programar con Julia prácticamente lo que sea de manera sencilla y con alto rendimiento. La tarea de Oscar A. Alvaro Morán, Mario Horacio Garrido Czacki y la mía propia, Oscar Alejandro Esquivel Flores, ha sido entusiasmarnos, estudiar el trabajo de mentes brillantes, compartir estos aprendizajes, disfrutar haciendo código con Julia, y cuyo resultado han sido estas notas.

Agradecemos a la Dirección General de Asuntos de Personal Académico (DGAPA-UNAM), en particular al Programa de Apoyo a Proyectos de Investigación en Innovación Tecnológica (PAPIIT) el **financiamiento al proyecto PAPIIT-IA104720** que nos ha permitido sumergirnos en este lenguaje de programación fascinante, desarrollar código eficiente y veloz y tener equipo de cómputo para probar nuestros algoritmos, así como compartir en diversos cursos a distancia lo que hemos aprendido de este fascinate lenguaje de programación.
"

# ╔═╡ e217b6b0-7b3e-4672-979c-ddeeaf4461ba
md"
## Presentación
> “If we had one language that was simultaneously easy to use and fast, you could just unleash innovation across the world.” 
>
> **Viral Shah**, CEO of Julia Computing and co-creator of the Julia programming language

De esta forma comienza uno de los co-creadores de Julia la descripción de las características de un lenguage de programación _moderno_ debería poseer, y lo que, en su visión, serían los resultados de desarrollar código con ese lenguaje.

Julia fue concebido y diseñado principalmente para ser productivo, sencillo de aprender y utilizar sin sacrificar velocidad y eficiencia. En plena época de lenguajes de programación científicos de alto nivel, Julia da un paso grande hacia adelante y reinventa la fotalezas y capacidades de los lenguage de programación técnicos, científicos y de alto rendimiento.
"

# ╔═╡ 9893668f-9832-40b8-9de4-80294e736d99
md"""

[Julia](https://julialang.org) es un lenguaje de programación diseñado de incio para el cómputo científico y el alto rendimiento, de tipado dinámico, usa como paradigma el despacho múltiple, interpretado y compilado, además de interactivo; es código abierto, de libre distribución y posee un rico ecosistema de bibliotecas y paquetes para desarrollar tareas de visualización, ciencia de datos, aprendizaje automatizado, cómputo paralelo.
"""

# ╔═╡ bce0f5e2-c80c-4df4-8eea-10c26cb08af7
html"""
<p align="center">
<img width="570" height="450"
src="https://github.com/oaefbsc/Julia-IIMAS-v1.0/blob/main/juliaenvironment.png?raw=true" />
</p>
"""

# ╔═╡ 32237832-8283-43ba-83ea-32c83c60c501
md"
![](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Julia_Programming_Language_Logo.svg/1200px-Julia_Programming_Language_Logo.svg.png = 100x20)
"

# ╔═╡ 26f04c28-7d09-4f90-b1bf-d82e28292179
md"
## Comunidad y recursos
La mejor inspiración para aventurarse a Julia proviene de sus desarrolladores y colaboradores, así como de la difusión del lenguaje en diversos medios, foros, conferencias y en las aulas.

Con la certeza de omitir a muchos colaboradores de Julia (pero no sin darles el reconocimiento debido y agradecerles su generosidad al compartir su conocimiento)  mencionamos a quienes nos han inspirado y alentado a descubrir y aprender este lenguaje y que además han desarrollado paquetes y bibliotecas que han reducido la complejidad al programar algoritmos de cómputo puro y rudo:

Recomendamos seguir los blogs, repositorios, cursos, talleres, conferencias, redes sociales y twitter de:

- Jane Herriman (@JaneHerriman)
- Matt Bauman (@_mabuman)
- Huda Nassar(@nassarhuda)
- Christopher Rackauckas (@ChrisRackauckas)
- David Sanders (@DavidPSanders)
- Valentin Churavy (@vchuravy)
- Tim Besard (@maleadt)

computólogos generosos y sumamente brillantes.

"

# ╔═╡ f5438f0b-82c2-4f99-88bf-698743a2f5fc
html"""
<p align="center">
<img width="680" height="400"
src="https://github.com/oaefbsc/Julia-IIMAS-v1.0/blob/main/julianosvip.png?raw=true" />
</p>
"""

# ╔═╡ e3e08fda-545e-4dd0-80d9-3dd3e226c562
md"""
Los creadores de Julia y la comunidad juliana promueven el aprendizaje del lenguaje a través de diversos medios:
* [JuliaWebPage](https://julialang.org/learning/): Recursos variados: tutoriales en video y escritos, libros, MOOCS, clases de cómputo cientifico con julia
* [Discourse](https://discourse.julialang.org): Grupo de discusión sobre Julia
* [Github](https://github.com/JuliaLang/julia): Código puro, puro código
* [JuliaAcademy](https://juliaacademy.com/): Cursos básicos e intermedios.
* Github de Jane Herriman: [xorJane](https://github.com/xorJane)
* Github de Huda Nassar:[nassarhuda](https://github.com/nassarhuda)
* Github del master David Sanders:[dpsanders](https://github.com/dpsanders)
"""

# ╔═╡ cc34b200-da5f-4eca-a3b0-550e07a2a269
md"""
Dos grandes esfuerzos a nivel internacional han surgido del trabajo constante al rededor de Julia:

* [Julia Computing](https://juliacomputing.com): Empresa que provee servicios de super cómputo en la nube
* [JuliaCon](https://juliacon.org/): La conferencia internacional en la que se presentan los desarrollos de software implementados en Julia y en la cual la comunidad juliana intercambia experiencias.
"""

# ╔═╡ 6a424e16-18aa-433e-bdab-29addbcfb962
html"""
<p align="center">
<img width="580" height="380"
src="https://github.com/oaefbsc/Julia-IIMAS-v1.0/blob/main/productsjulia.png?raw=true"
/>
</p>
"""

# ╔═╡ f12e2139-e993-4ae1-8015-29c46ce76e9f
md"""
## Conceptos básicos
Para seguir el código desarrollado en estas notas es necesario que se tenga instalado localmente `Julia` y el paquete `Pluto`.
"""

# ╔═╡ 531d22b9-4591-4a1b-bb47-e3c1ea193dbd
md"""
### ¿Es necesario aprender otro lenguaje?
El problema de los dos lenguajes.

En primer lugar, al elegir un lenguaje se considera la facilidad de aprendizaje, la generación de código rápidamente, esto es la **productividad** (_productive_ o _high-level languages_) que ofrece el lenguaje: python, ruby, matlab
En segundo lugar, en diversos problemas a tratar es indispensable considerar  el **rendimiento** del lenguaje de programación (_performance_ o _lower-level languages_) y la generación del código máquina eficiente: Fortran, C, C++. En general un lenguaje es atractivo si es productivo, sin embargo su rendimiento no es óptimo y viceversa; por tanto, la elección de productividad o rendimiento dependerá de las necesidades particulares del problema a resolver.

Adicional a lo anterior la **generalidad** del lenguaje, esto es tomar en cuenta si se trata de un lenguaje de propósito genenal (_general purpose language_) o de dominio específico (_domain-specific language_). Es posible generar código eficiente y rápido de manera sencilla si se trabaja cn lenguajes de dominio específico o con librerías especiales sin embargo el alcance (_scope_) de dichas herramientas será un tanto limitado.

Así, para lograr la productividad, rendimiento y generalidad ( _Productivity vs Performance vs Generality_) es necesario utilizar dos lenguajes. El prototipado de las soluciones se realiza por medio de un lenguaje de alto nivel como Python o MATLAB lo que proporciona una prueba de concepto rápidamente; una vez hecho lo anterior, se realiza la traducción del protototipo a otro lenguaje como C o C++ para realizar los cálculos de manera eficiente.

Evitar el uso de dos lenguajes de programación es la razón primordial de Julia y el lema que lo caracteriza es:

>"looks like **Python**, feels like **Lisp**, runs like **C**"

lo cual puede entenderse en el sentido que Julia ofrece *productividad, generalidad y rendimiento*.
"""

# ╔═╡ 5c3110db-96e9-4ce3-8814-302612792c66
md"
### Ventajas que ofrece Julia

- Es interpretado
- Es un lenguaje de alto nivel, fácil de aprender
- Diseñado para que sea sencillo desde el comienzo
- Es veloz (~2-3x la velocidad de C)
- Tiene un sofisticado sistema de tipos de datos
- Sin embargo no es necesario hablar de tipos siempre
- Tiene _despacho múltiple_ de funciones especializado en el tipo de sus argumentos
- Tiene un sofisticado empleo de _metaprogramación_(macros) para la generación de código
- La mayoría de las bibliotecas están implementadas en Julia puro
- Evita el problema del segundo lenguaje: Python, R, Matlab son fáciles de aprender y se logran desarrollos rápidos, sin embargo tienen ejeccuicones lentas, entonces es necesario cambiar ciertas partes del código a C, C++ o Fortran
- Los propios usuarios de Julia son sus desarrolladores"

# ╔═╡ 58cce7a1-f80a-4b52-b74c-40a0e6ed5bb0
md"
### Instalación y modo REPL

Julia puede descargase desde la sección [download](https://julialang.org/downloads/) del sitio oficial de [julia](https://julialang.org) e instalarse a través del sistema de paquetes (yast, apt-get, homebrew...)

Ejecución:
* Modo REPL (_Read-Evaluation-Print-Loop_)
* Por medio de la edición de comandos en cualquier editor
* Plugins para el editor de código Visual Studio
* En el navegador por medio de [Pluto](https://blog.jcharistech.com/2020/11/17/pluto-jl-plutoui-tutorial/) notebooks
* En el navegador por medio de Jupyter notebooks

El modo REPL se lleva acabo en una terminal donde se ejecuta el intérprete de Julia.
Modos de REPL:
* Default: Prompt `julia>`, teclear `backspace` en otros modos para volver al modo default.
* Ayuda: Prompt `help?>`, teclear `?` para ingresar a la ayuda. Buscar via `?término_buscar`
* Shell: Prompt `shell>`, teclear `;` para ingresar al modo shell.
* Package: Prompt `Pkg>`,teclear `]` para ingresar al modo package.
"

# ╔═╡ 118c49a0-89b7-4a04-944e-e9def11ee04f
md"
### Cuadernos de Pluto
Consiste de la versión Juliana de los cuadernos de ejecución de código basados en la web. Una buena referencia es el tutorial de JCharisTech:
"

# ╔═╡ 9367be60-8688-42dc-891c-55695f9cf1f5
html"""
<iframe width="420" height="315"
src = "https://www.youtube.com/embed/C4QhZcX34mI">
</iframe>
"""

# ╔═╡ 5dda271c-c598-496a-b298-9631a7e3e7cc
md"## Introducción a Julia"

# ╔═╡ 69b764c9-f7ee-4f92-b6dc-47a528e268e4
md"
### Operadores y tipos de datos numéricos 
"

# ╔═╡ 2ee23b39-6cc5-4426-bb99-807ea8d5078f
md"
#### Operadores aritméticos
"

# ╔═╡ c28d8008-cd60-4689-9132-f3f754f790ac
begin
	7 + 2 # suma
	2 + 5
end

# ╔═╡ 1f7686cc-edc3-43f5-841e-35e5f471dacd
7 - 2 # resta

# ╔═╡ 6d7e8512-c409-4c29-bffb-e237280db69a
7 * 2 # multiplicación

# ╔═╡ 4787a456-17a5-42fc-9a4d-fad8ede22636
7 / 2 # división real

# ╔═╡ 2458b693-ca16-4142-8995-fc6e95b1a141
7 \ 2 # división real inversa

# ╔═╡ 9b171ac4-9fa1-4abb-adf7-aa8395c5b1ca
7 ÷ 2 # división entera

# ╔═╡ ea1fbd58-a2df-4ee0-8224-e385092ee863
md"
Para obtener el operador ```÷``` se hace la combinación ```\div + <TAB>```
" 

# ╔═╡ 2bb484c9-d42b-4f80-96f7-2063f486e8bb
√4  # raíz cuadrada

# ╔═╡ 0f8ca485-3375-4a01-8783-9de6b73572c1
md"
Para obtener el operador `√` se hace la combinación `\sqrt + <TAB>`
" 

# ╔═╡ 7a799cbc-1af2-44b4-8b33-b898fe8aa1ff
7 ^ 2 # potencia

# ╔═╡ 1da6fb6f-88ef-4970-ad59-c63cba3e31c2
7 % 2 # módulo o residuo

# ╔═╡ c71ed63b-b15a-46b4-9eaf-a78b81e48e43
md"
Julia nos ofrece algunas funciones predefinidas para hacer operaciones aritméticas
"

# ╔═╡ e97451b6-916c-4a82-92c2-116304de6b96
div(7,2) # división entera

# ╔═╡ 1084299e-dc96-485a-9f45-41789f8fb92d
rem(7,2) # módulo

# ╔═╡ 7edee9ea-69d7-452d-bfde-0adac84ec71f
divrem(7,2) # división entera y módulo

# ╔═╡ e4a2827e-6ffe-477f-a9b2-407dd7e8dc58
md"
#### Variables y asignaciones
"

# ╔═╡ 310faa21-3903-416f-a2e8-068f93488851
begin
	a = 3
	a
end

# ╔═╡ deba17dc-7d23-47cf-b0a5-eb43ed1a71ec
md"
Para ejecutar múltiples líneas de código en Pluto, es necesario envolverlas en un bloque ```begin```-```end```.
"

# ╔═╡ fdbd513a-a410-46e1-b23f-61aa77a8ba9d
begin
	b = 5
	a + b
end

# ╔═╡ 33e46d17-c0e3-4fed-961b-bbd5a1305f5c
md"
En Pluto se tienen distintas formas de desplegar resultados, una de ellas es por medio de la función `with_terminal()` contenida en el paquete **PlutoUI**.
"

# ╔═╡ 6f7a4601-2ea1-4573-a3e1-255ba060c3c2
with_terminal() do
	println("El valor de a + b es:", a + b)
end

# ╔═╡ cde05d65-5f56-4716-9d46-95f85eae6d97
md"
Otra forma de desplegar resultados es con `Print`
" 

# ╔═╡ 45e4defa-53cd-44c0-a07e-e432bc1deb3c
x = "Hola, bienvenido a Julia"

# ╔═╡ 3bd645e0-a3dd-431b-b8e7-88645c2293f0
Print(x)

# ╔═╡ 615592e5-ab15-484e-bd0c-fa21ae84b232
md"
Las celdas markdown de Pluto aceptan comandos de $\LaTeX$ para escribir expresiones matemáticas con excelente estética tipográfica:

$c = \sqrt{a^2 + b^2}$
"

# ╔═╡ a4da4e9c-1b78-4840-8737-77857846e848
md"
El uso de comandos de $\LaTeX$ es útil para editar caracteres y símbolos Unicode los cuales se les puede asignar valores y ser tratados por Julia como cualquier otra variable. Por ejemplo, por medio de  la combinación `\alpha + <TAB>` se obtiene el símbolo `α` al cual es posible asignarle el valor de 10:
"

# ╔═╡ 7ea6fdd5-2394-41ec-b0e5-7df578e1f1ee
begin
	α = 10
	α
end

# ╔═╡ e3399581-bf50-441e-8de9-ab6b0f6a4693
begin
	β = 15
	α + β
end

# ╔═╡ fc934b9c-9b35-40c1-91d2-dab664e2ebf0
with_terminal() do
	println("La suma α + β = ", α + β)
end


# ╔═╡ 6bc82abd-7187-46b9-bc04-f90a7c7f1dda
with_terminal() do
	🐰 = "Bugs bunny"
	println("El nombre del conejo es: ", 🐰)
end

# ╔═╡ 1832e1ca-81d3-4d1b-85de-1124fa72597a
md"
Para obtener el conejo se utiliza la combinación de teclas `\:rabbit: + <TAB>`
"

# ╔═╡ aee8c11f-4fde-4e6b-ac7b-5fe3d176c09c
🐧 = 3

# ╔═╡ da4a03c7-54a8-4501-8a23-4773a5e50005
md"
Valores de variables pueden ser sustituidos por cadenas de caracteres de una manera sencilla usando el operador `$`
"

# ╔═╡ 50a63742-c169-4ee5-9d32-560d778cb420
begin
	nombre = "Oscar"
	saludo = "Hola, $nombre"
	Print(saludo)
end

# ╔═╡ 9174a56d-1264-469c-9cdd-c9c2b67e693d
md"
El uso de la función `Print()` es otra forma de escritura en Pluto
"

# ╔═╡ d936d1f2-afef-4166-b0c7-3a5024163d36
begin
	μ = 3
	Print("The sine of $μ is $(sin(μ))")
end

# ╔═╡ be1b1a3a-0479-44c7-866e-5116fe9bd1a6
md"
####  Tipos de datos numéricos

Julia contiene un amplio conjunto de tipos de datos:
- Los tipos de datos numéricos pueden tener diferente precisión
- Actualmente, al realizar cálculos aritméticos el tipo de dato resultante es promovido al tipo de dato del equipo de cómputo.
- Al escribir `Int + <TAB>` resultará en una lista desplegable de tipos a elegir.
"

# ╔═╡ 486c268d-4ba4-4767-aa5d-115909dcaf47
Print(Sys.WORD_SIZE)  # tipo de dato del sistema

# ╔═╡ 48d9ff79-2673-44f2-8267-b9331a703ac1
Int

# ╔═╡ a1e5dfa3-9a4e-4290-8e31-cfcb3c4c1d54
typeof(1)

# ╔═╡ 2f86145b-acc7-4ca4-93d5-77a1120c2361
md"
Es posible forzar un valor numérico a un tipo de dato específico
"

# ╔═╡ dc73c6a4-6edd-40da-b34b-07dfdd247a85
aaa = 1

# ╔═╡ ddc82087-fd78-4b7e-85b4-e0e2840b4530
a1 = Int8(1)

# ╔═╡ 64d1e79f-70ab-408a-8d28-dc528a4270b0
typeof(a1)

# ╔═╡ f71a00b6-26e3-480f-be2a-c1421099b5a3
b1 = Int8(2)

# ╔═╡ 85063ae2-e921-48e9-912f-955b5f6d7b45
c1 = a1 + b1

# ╔═╡ 7610dc20-d4bc-44d4-a8a5-6cb946ba0a5f
typeof(c1)

# ╔═╡ 90eb3f8d-8224-48ca-8698-29cc10ec0910
a2 = Int(1e5)

# ╔═╡ de72e4a9-9635-4ad1-89bc-9207551ba03b
typeof(a2)

# ╔═╡ 5457b56f-1e80-4a17-a234-2c6c6dd626fe
typeof(3 * a2)

# ╔═╡ 9fbbdd4e-3727-490f-80af-bbb8f47d612e
md"
Julia está diseñado de tal forma que provee una jerarquía de tipos de datos la cual define conjuntos y subconjuntos de tipos. Por medio de las funciones `supertype()` y 
`supertype()` se despliegan los tipos de datos en jerarquía superior e inferior respectivamente.
"

# ╔═╡ 63ea54fd-2182-4d85-b5f2-32d8cf9dc126
aa = 5

# ╔═╡ 67c75460-6810-44bb-afc4-cb5c8ce3e41d
typeof(aa)

# ╔═╡ 1732550d-c632-4e5d-ab37-a5f54a894dc4
supertype(Int64)

# ╔═╡ 77354417-80d8-4773-9a56-e4e3b1964bd2
supertype(Signed)

# ╔═╡ 11dd1148-e8c9-4a42-94b9-0d9c7d5f6e48
supertype(Integer)

# ╔═╡ 53ebb56a-da7b-4b81-8c1f-d7ac4de7b734
subtypes(Real)

# ╔═╡ b207ac5a-587c-4298-81a1-6eb19b09326b
subtypes(Integer)

# ╔═╡ aae87f32-6b51-447d-b664-515627f8b287
subtypes(Signed)

# ╔═╡ a70146d0-57cb-4253-ae86-663e71e89838
md"
Bajo esta jerarquía de tipos se pueden caracterizar dos grupos de datos:
- Dato **Abstracto** como `Real`
- Dato **Concreto** como `Int64`
Es posible explorar un tipo de dato con las funciones `isconcretetype()` y `isabstracttype()`  
"

# ╔═╡ 4dbd1038-9ab6-4655-a3e2-9a03796894a2
isconcretetype(Int64)

# ╔═╡ c3547386-57c7-481a-bccf-ec06655572a7
isabstracttype(Int64)

# ╔═╡ 755be378-d0d9-4ce0-98a5-c66fa88f864a
md"
La jerarquía de tipos puede apreciarse de la siguiente manera:
"

# ╔═╡ 0d6d8646-ccf5-4f2b-83f0-663a80e53367
with_terminal() do
	function _show_subtype_tree(mytype, printlevel)
    	allsubtypes = subtypes(mytype)
    	for cursubtype in allsubtypes
        	print("\t"^printlevel)
        	println("|___",cursubtype)
        	printlevel += 1
        	_show_subtype_tree(cursubtype, printlevel)
        	printlevel -= 1
    	end
	end
	function show_type_tree(T)
    	Print(T)
    	_show_subtype_tree(T,0)
	end
	show_type_tree(Number)
end

# ╔═╡ fcc5278a-7014-46db-9a0b-a69190b36b4e
md"
### Tipos de números
"

# ╔═╡ 51969f4d-25d7-4e81-8e3e-3e990de39f14
md"
#### Enteros
"

# ╔═╡ 772d83b2-7a34-4c3f-99cf-19aa01e2f864
typeof(10)

# ╔═╡ d53ab502-4697-460d-992c-072c165ebb8b
typeof(10)

# ╔═╡ 3d90519e-a9d0-409c-9f30-03ccc9a409e0
sizeof(Int64)  # número de bytes

# ╔═╡ 41806201-1904-4d21-b650-505e2d6ffb3e
md"
Los valores de un número entero tiene un rango de limitado conforme al número de bits del sistema.
"

# ╔═╡ 12865de1-be11-441f-bf12-ca10217de356
typemin(Int64), typemax(Int64)

# ╔═╡ c0aaede5-b123-41f0-9bbe-5ecc1c9a5565
md"
Con la función `bitstring()` se obtiene la representación binaria de un número:
"

# ╔═╡ 9827a84f-3bdd-4d5d-8c71-1c5ee03071d2
bitstring(8)

# ╔═╡ b2da90f9-0956-4524-a37d-f61060895fba
length(bitstring(8))

# ╔═╡ 9afe5703-f5b2-4b9a-8c09-98e391f4dd4f
bitstring(typemax(Int64))

# ╔═╡ 70ff1f7f-7b75-41be-8a75-a55f01f15d07
bitstring(typemin(Int64))

# ╔═╡ e7953a83-e3a5-4aa1-96e9-3fc97097c39b
md"
Una forma auxiliar para escribir números es por medio del uso de guiones bajos como separadores de cifras
"

# ╔═╡ 1001a5f8-ca65-4c74-b37b-ba93b45ee03a
1_754_622

# ╔═╡ 62ba091a-28fa-4a3e-a3a3-46d1af9d44aa
md"
#### Aritmética de precisión arbitraria
Es posible obtener números enteros o flotantes de precisión arbitraria por medio de los tipos `BigInt` y `BigFloat`.
La función `big()` convierte un número al correspontiente tipo `Big`. Julia envuelve (wrap) la biblioteca *GNU Multiple Precision Arithmetic* [GMP](https://gmplib.org/)
"

# ╔═╡ 1524d077-50bd-4d1e-b24d-f7c0f56dae4f
with_terminal() do
	println(10^3)
	println(10^6)
	println(10^12)
	println(10^15)
	println(10^19)
end

# ╔═╡ 162083d9-8675-42a7-ada9-68661e780fe7
md"
Julia provee la función `big()` que obliga a que cualquier tipo de dato numérico se calcule con precisión arbitraria.
"

# ╔═╡ ef577eb3-c1b5-4a5f-a4c0-1b91d506de37
bb = big(10)

# ╔═╡ 41005ba0-7a17-4a39-a09b-dce4ba7468a6
typeof(bb)

# ╔═╡ cc5bdbcc-8948-4594-aa24-44ae756e2b63
bb ^19

# ╔═╡ 11660134-8170-4395-8e90-f025e4120f33
typeof(bb^19)

# ╔═╡ a03b76e2-448e-445c-a4ad-e1f24092ca1d
md"
#### Flotantes
La aritmética de punto flotante define un [standard](https://irem.univ-reunion.fr/IMG/pdf/ieee-754-2008.pdf) para aproximar un número real ya que la mayoría de los números reales no pueden ser representados. Julia proporciona soporte de software para esta aritmética con la que se pueden manejar operaciones en valores numéricos que no es posible representar en hardware nativo.
"

# ╔═╡ ef28fe86-3d0c-416b-afc0-f48f3bbc55f6
begin
	a_int = 5
	a_float = 5.0
end

# ╔═╡ 504af83c-1493-40bf-85c6-c2f8a3b4dce2
typeof(a_int), typeof(a_float)

# ╔═╡ f3e1c943-4fae-46ec-a2c6-572e8d87e737
sizeof(Float64)

# ╔═╡ ea577eea-d419-49c6-bf97-e46f166297eb
a_int == a_float

# ╔═╡ eb67ef9d-89e3-4e39-b6b4-ff745a41afde
a_int ≡ a_float # equivale a a_int === a_float

# ╔═╡ 4417e958-78d2-4657-bbcf-47290269c142
md"
La expresión anterior verifica si la representación bit a bit de dos números es la misma
"

# ╔═╡ 5674824e-c1bc-4812-b55c-1ea724259266
bitstring(a_int)

# ╔═╡ e0bd5fce-07bf-4d4e-af43-fb987a767548
bitstring(a_float)

# ╔═╡ be010aef-69b9-430d-aa47-1830513fd080
md"
Operaciones con números de distintos tipos devuelven un resultado que **promovido**
al al tipo con mayor precisión
"

# ╔═╡ df6ff691-2ec0-45c7-b9e9-4490821717d0
a_prom = a_int + a_float

# ╔═╡ b9655e52-afc9-46ac-9d62-2f1322312f41
typeof(a_prom)

# ╔═╡ 1e257341-d557-4418-bffa-0b239eaed474
md"
Julia ofrece la representación y aritmética del valor infinito $\infty$
"


# ╔═╡ 15b7fe48-0952-43aa-bf22-6c919da9b767
5/0, -5/0

# ╔═╡ 1e50be2f-869f-4afb-ad12-7034ee426cac
5/Inf, -5/Inf

# ╔═╡ a09b5916-a838-49d5-80c1-dcf38772f2bf
typeof(Inf)

# ╔═╡ ba8213f7-0bbb-4b90-89d7-c58d7fb8e57e
5/Inf == -5/Inf

# ╔═╡ 001487af-807f-44c0-8832-e16302869631
5/Inf === -5/Inf

# ╔═╡ c47845fa-db2c-4754-bb8b-3214423dd7c6
0 * Inf

# ╔═╡ 7f31d9b4-3e81-472b-b28b-5ffa3ee9f690
0/0

# ╔═╡ 475ccd39-f35d-4a9f-8cc9-1b290e82ae5f
typeof(Inf)

# ╔═╡ cd692296-6fdc-482c-a4b2-a2acbbcd4e1a
md"
#### Racionales
Los números racionales puden ser construidos en Julia al usar el operador `//`.
"

# ╔═╡ cbabb0ac-9904-46e6-959d-da09127a2f6f
a_rat = 3//4

# ╔═╡ 5157b455-7fef-400c-a05c-8cf61f789952
typeof(a_rat)

# ╔═╡ aee93ea3-9004-47c4-bc60-f5ce99faf410
sizeof(a_rat), sizeof(Int)

# ╔═╡ b93e49f4-7556-4a8e-9f5c-500088afabbe
numerator(a_rat), denominator(a_rat)

# ╔═╡ 91d8de62-2757-4c2e-946a-6c0829100ca7
md"
Con la función `float()` se hace la conversión del unn número a racional a un flotante
"

# ╔═╡ 866e2f20-e142-47a8-bfe1-268f1c5a4088
float(a_rat) # equivalente a Float64(a_int)

# ╔═╡ c327e0f1-8b05-4e7b-893e-766c67889b7c
3//4 + 5//2

# ╔═╡ ecdce9a8-6764-4446-ab4c-50aca2bc307d
md"
#### Complejos
Julia ofrece la palabra reservada `im` para representar $\sqrt{-1}$
"

# ╔═╡ 2fa027ba-4f19-4753-96cf-fa171c5b90b5
a_com = 3 + 5im

# ╔═╡ c14d6dba-53e3-48a1-800d-6081ee9c7fd3
md"
Otra forma de construir números complejos es con la función `complex()`
"

# ╔═╡ 6d149814-de35-4638-91ca-5d042792079f
complex(3,5)

# ╔═╡ 552bcf13-697b-4aac-9d17-dd5bff385cd0
typeof(a_com)

# ╔═╡ 9409e754-b7c8-4041-900d-3e5296b7f121
sizeof(a_com)

# ╔═╡ 844df9d3-5717-4b1c-8944-673dc8794c32
a_com.re, a_com.im

# ╔═╡ de835654-7b99-4edd-b8ce-c5424a0b3840
a_com * 5

# ╔═╡ a43145f4-fb8d-4fd2-a801-aadc92a6bb87
conj(a_com) 

# ╔═╡ 13897801-be30-4389-8eb9-04f71bde6856
md"
La función `conj()` devuelve el complejo conjugado de un complejo
"

# ╔═╡ b28cb70c-6e7a-431d-b050-fd8a6333ee11
typeof(3 + 5.0im)  

# ╔═╡ 0b9fb4e1-c994-42a8-bcdc-fc27e33647b0
typeof(3 + 5//1im)

# ╔═╡ bab9dacd-35b5-436c-8e68-104a15168868
md"
#### Irracionales
"

# ╔═╡ 7eb92b9a-b3ad-428a-9c2f-1daea7ff372a
md"
Julia ofrece la representación de distintos números racionales como π = 3.1416 y los provee de diversas operaciones
"

# ╔═╡ f20f561a-eb19-47a8-9e0f-0dd11290a03e
π

# ╔═╡ 4913b08a-b48e-41fe-b3ed-657bba402565
typeof(π)

# ╔═╡ 817c22f8-2aa2-4252-9dfa-681178e5e77b
sizeof(π)

# ╔═╡ 5858e67d-cf31-484e-b78a-6e709c8913d6
a_pi = π + 1

# ╔═╡ 4db3b14b-83fd-430f-a1db-a2d3f754cbd0
typeof(a_pi)

# ╔═╡ da0e3e68-56b9-411a-812e-a017a3acf889
float(π)

# ╔═╡ e20001e4-6c7e-42aa-8071-080a827c54c2
big(π)

# ╔═╡ e4913e93-d98c-431e-ad80-6dd225b4e1b4
a_big_pi = big(a_pi)

# ╔═╡ 7b16ac35-e370-4315-923e-08cad41521ac
typeof(a_big_pi)

# ╔═╡ b0eb9787-4b3a-48c3-a55b-05a928903595
md"
Otro número irracional es el número de Euler ℯ = 2.71
"

# ╔═╡ 08c0aec7-4910-4b0b-8595-efbbb95faf7b
ℯ

# ╔═╡ 0ca76ec6-fb85-45a3-ac33-bbe72ab9a7b8
typeof(ℯ)

# ╔═╡ e390a6d4-aa61-405d-9a22-3f9dda1def03
sizeof(ℯ)

# ╔═╡ 3682ff5f-baf7-468c-b26c-bf27aec4d531
float(ℯ)

# ╔═╡ 2c00f8a7-2a2a-4aab-bc73-7f3c6cb36027
big(ℯ)

# ╔═╡ 708ec630-767f-41d5-8f78-1db8fc7c3da2
ℯ + 1

# ╔═╡ bc5c7623-0e9b-45f4-915a-ae8aaaa5c907
sum_irrat = π + ℯ

# ╔═╡ 66500b7a-c5d9-4633-b760-7e097db73a73
typeof(π), typeof(ℯ)

# ╔═╡ 6c4514ba-c941-4820-ac86-e799bfcaabb1
typeof(sum_irrat)

# ╔═╡ 2cdf39fb-cce6-4b40-a9b4-6989fe680f74
sum_big_irrat = big(π) + big(ℯ)

# ╔═╡ 8f09aa5e-426d-496f-b059-f2d80fa68fd7
typeof(sum_big_irrat)

# ╔═╡ 412b81b4-c64a-4a2f-b67c-3358cd37cbc9
md"
### Cadenas
"

# ╔═╡ 4ff5205b-95ae-4c3e-9667-c264fad7dd82
s1 = "Esto es una cadena de caracteres o string"

# ╔═╡ b810e047-9b8b-4283-bfeb-3832d4f5629c
s2 = ```Esto es otro string```

# ╔═╡ 58388d13-1c37-4b26-a66b-a4d17d525c3d
s3 = """
Esto es un string
con múltiples líneas
"""

# ╔═╡ c8df548c-bf2e-43f0-a31f-471ac19d5bf3
typeof('a')

# ╔═╡ 6bc09c93-a42d-4163-acb7-a1497cb2f661
md"
> Las comillas simples `''` denotan un caracter mas no una cadena.
"

# ╔═╡ 2fa0fe5b-148f-457c-95cc-eb89f583e43c
s4 = 'a'

# ╔═╡ a4ba78cc-d57d-47dc-b57c-87e964c01270
s5 = "a"

# ╔═╡ 21ca36ec-5fab-4395-9a93-f6ffa8ac3621
typeof(s4), typeof(s5)

# ╔═╡ bcbbbce3-0518-48d0-bd71-d36f146f8263
md"
#### Concatenación de cadenas
"

# ╔═╡ e7806823-034f-42b0-86ef-d55a18fe7b8c
begin
	name = "Julia "
	surname =  "Programming"
end

# ╔═╡ 71e93945-5ab1-4e40-aaae-bc687fa0885a
name * surname

# ╔═╡ a17e85f6-aa02-49ca-8c39-9a951d83bbf4
string(name, surname)

# ╔═╡ b96a5b8a-3510-4678-ae5a-6d21495d3646
md"
Una cadena puede repetirse al usar el operador `^` o bien con la función `repeat()`.
"

# ╔═╡ 943a5439-c784-441d-a7c3-ac9ff67294ab
name ^ 5

# ╔═╡ 6545836c-4d87-4a5c-bfe0-5fd7aca54ee2
repeat(name,5)

# ╔═╡ 6bd3c386-426a-473c-b910-2e27801ed9bd
md"
#### Cadenas como arreglos de caracteres
Las cadenas o strings pueden considerarse como vectores de caracteres en los cuales cada elemento tiene un índice.
"

# ╔═╡ 47ca1f46-d4b7-4a5f-b27f-313e32e721af
cadena  = "Julia Programming"

# ╔═╡ cce8c0bf-a7af-4964-8941-cecd5981fedd
cadena[1] # primer elemento

# ╔═╡ aaaa018e-1590-4257-beaf-ce9fb329d058
cadena[end] # último elemento

# ╔═╡ 833e6ab9-c451-4354-9044-41f2b9b0e061
md"
Los índices en Julia empiezan en uno y no en cero
"

# ╔═╡ 53c2f1f3-7105-4cbe-9c88-e7a5eb9317f8
cadena[0]

# ╔═╡ 2aa9f7d9-36c7-4f61-be65-09a510401e6a
md"
**No** existen índices negativos para recorrer el vector desde el final
"

# ╔═╡ f7433142-30a3-4b97-8764-9a676b9cb72f
cadena[-1]

# ╔═╡ e73ba762-b54f-469b-a5b8-3ec887d728da
md"
Como en otros lenguajes de alto nivel, Julia ofrece la operación de rebanada o *slicing* para extraer subcadenas de la cadena original
"

# ╔═╡ aae0d50d-132e-4129-9745-1ff923cb3b73
cadena[1:5]

# ╔═╡ e0ec7f7f-6b56-44f9-b472-fae0d1c77d6b
cadena[6:end]

# ╔═╡ b57c030d-8582-4342-9794-580ea8219d2c
cadena[6:end-1]

# ╔═╡ 02c86339-ed33-4a62-8c4d-576196a2a16d
cadena[3:6]

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.16"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

[[Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[HypertextLiteral]]
git-tree-sha1 = "5efcf53d798efede8fee5b2c8b09284be359bf24"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.2"

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

[[Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[Parsers]]
deps = ["Dates"]
git-tree-sha1 = "f19e978f81eca5fd7620650d7dbea58f825802ee"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.1.0"

[[PlutoUI]]
deps = ["Base64", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "4c8a7d080daca18545c56f1cac28710c362478f3"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.16"

[[Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

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

[[Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"
"""

# ╔═╡ Cell order:
# ╠═c655cdcd-f860-4b0d-b1e1-283a796a65a9
# ╠═cc2f6ede-7ab3-4917-88f7-e194e430c3b5
# ╟─fabe02a2-2525-11ec-2a19-e3ea78a62670
# ╟─fb1b2fc7-366e-48ee-9ed2-e45698cff3ff
# ╟─5b0c5993-1a82-413f-b62f-242c165dbe51
# ╟─e217b6b0-7b3e-4672-979c-ddeeaf4461ba
# ╟─9893668f-9832-40b8-9de4-80294e736d99
# ╟─bce0f5e2-c80c-4df4-8eea-10c26cb08af7
# ╟─32237832-8283-43ba-83ea-32c83c60c501
# ╟─26f04c28-7d09-4f90-b1bf-d82e28292179
# ╟─f5438f0b-82c2-4f99-88bf-698743a2f5fc
# ╟─e3e08fda-545e-4dd0-80d9-3dd3e226c562
# ╟─cc34b200-da5f-4eca-a3b0-550e07a2a269
# ╟─6a424e16-18aa-433e-bdab-29addbcfb962
# ╟─f12e2139-e993-4ae1-8015-29c46ce76e9f
# ╟─531d22b9-4591-4a1b-bb47-e3c1ea193dbd
# ╟─5c3110db-96e9-4ce3-8814-302612792c66
# ╟─58cce7a1-f80a-4b52-b74c-40a0e6ed5bb0
# ╟─118c49a0-89b7-4a04-944e-e9def11ee04f
# ╟─9367be60-8688-42dc-891c-55695f9cf1f5
# ╟─5dda271c-c598-496a-b298-9631a7e3e7cc
# ╟─69b764c9-f7ee-4f92-b6dc-47a528e268e4
# ╟─2ee23b39-6cc5-4426-bb99-807ea8d5078f
# ╠═c28d8008-cd60-4689-9132-f3f754f790ac
# ╠═1f7686cc-edc3-43f5-841e-35e5f471dacd
# ╠═6d7e8512-c409-4c29-bffb-e237280db69a
# ╠═4787a456-17a5-42fc-9a4d-fad8ede22636
# ╠═2458b693-ca16-4142-8995-fc6e95b1a141
# ╠═9b171ac4-9fa1-4abb-adf7-aa8395c5b1ca
# ╟─ea1fbd58-a2df-4ee0-8224-e385092ee863
# ╠═2bb484c9-d42b-4f80-96f7-2063f486e8bb
# ╟─0f8ca485-3375-4a01-8783-9de6b73572c1
# ╠═7a799cbc-1af2-44b4-8b33-b898fe8aa1ff
# ╠═1da6fb6f-88ef-4970-ad59-c63cba3e31c2
# ╟─c71ed63b-b15a-46b4-9eaf-a78b81e48e43
# ╠═e97451b6-916c-4a82-92c2-116304de6b96
# ╠═1084299e-dc96-485a-9f45-41789f8fb92d
# ╠═7edee9ea-69d7-452d-bfde-0adac84ec71f
# ╟─e4a2827e-6ffe-477f-a9b2-407dd7e8dc58
# ╠═310faa21-3903-416f-a2e8-068f93488851
# ╟─deba17dc-7d23-47cf-b0a5-eb43ed1a71ec
# ╠═fdbd513a-a410-46e1-b23f-61aa77a8ba9d
# ╟─33e46d17-c0e3-4fed-961b-bbd5a1305f5c
# ╠═6f7a4601-2ea1-4573-a3e1-255ba060c3c2
# ╟─cde05d65-5f56-4716-9d46-95f85eae6d97
# ╠═45e4defa-53cd-44c0-a07e-e432bc1deb3c
# ╠═3bd645e0-a3dd-431b-b8e7-88645c2293f0
# ╟─615592e5-ab15-484e-bd0c-fa21ae84b232
# ╟─a4da4e9c-1b78-4840-8737-77857846e848
# ╠═7ea6fdd5-2394-41ec-b0e5-7df578e1f1ee
# ╠═e3399581-bf50-441e-8de9-ab6b0f6a4693
# ╠═fc934b9c-9b35-40c1-91d2-dab664e2ebf0
# ╠═6bc82abd-7187-46b9-bc04-f90a7c7f1dda
# ╟─1832e1ca-81d3-4d1b-85de-1124fa72597a
# ╠═aee8c11f-4fde-4e6b-ac7b-5fe3d176c09c
# ╟─da4a03c7-54a8-4501-8a23-4773a5e50005
# ╠═50a63742-c169-4ee5-9d32-560d778cb420
# ╟─9174a56d-1264-469c-9cdd-c9c2b67e693d
# ╠═d936d1f2-afef-4166-b0c7-3a5024163d36
# ╟─be1b1a3a-0479-44c7-866e-5116fe9bd1a6
# ╠═486c268d-4ba4-4767-aa5d-115909dcaf47
# ╠═48d9ff79-2673-44f2-8267-b9331a703ac1
# ╠═a1e5dfa3-9a4e-4290-8e31-cfcb3c4c1d54
# ╟─2f86145b-acc7-4ca4-93d5-77a1120c2361
# ╠═dc73c6a4-6edd-40da-b34b-07dfdd247a85
# ╠═ddc82087-fd78-4b7e-85b4-e0e2840b4530
# ╠═64d1e79f-70ab-408a-8d28-dc528a4270b0
# ╠═f71a00b6-26e3-480f-be2a-c1421099b5a3
# ╠═85063ae2-e921-48e9-912f-955b5f6d7b45
# ╠═7610dc20-d4bc-44d4-a8a5-6cb946ba0a5f
# ╠═90eb3f8d-8224-48ca-8698-29cc10ec0910
# ╠═de72e4a9-9635-4ad1-89bc-9207551ba03b
# ╠═5457b56f-1e80-4a17-a234-2c6c6dd626fe
# ╟─9fbbdd4e-3727-490f-80af-bbb8f47d612e
# ╠═63ea54fd-2182-4d85-b5f2-32d8cf9dc126
# ╠═67c75460-6810-44bb-afc4-cb5c8ce3e41d
# ╠═1732550d-c632-4e5d-ab37-a5f54a894dc4
# ╠═77354417-80d8-4773-9a56-e4e3b1964bd2
# ╠═11dd1148-e8c9-4a42-94b9-0d9c7d5f6e48
# ╠═53ebb56a-da7b-4b81-8c1f-d7ac4de7b734
# ╠═b207ac5a-587c-4298-81a1-6eb19b09326b
# ╠═aae87f32-6b51-447d-b664-515627f8b287
# ╟─a70146d0-57cb-4253-ae86-663e71e89838
# ╠═4dbd1038-9ab6-4655-a3e2-9a03796894a2
# ╠═c3547386-57c7-481a-bccf-ec06655572a7
# ╟─755be378-d0d9-4ce0-98a5-c66fa88f864a
# ╟─0d6d8646-ccf5-4f2b-83f0-663a80e53367
# ╟─fcc5278a-7014-46db-9a0b-a69190b36b4e
# ╟─51969f4d-25d7-4e81-8e3e-3e990de39f14
# ╠═772d83b2-7a34-4c3f-99cf-19aa01e2f864
# ╠═d53ab502-4697-460d-992c-072c165ebb8b
# ╠═3d90519e-a9d0-409c-9f30-03ccc9a409e0
# ╟─41806201-1904-4d21-b650-505e2d6ffb3e
# ╠═12865de1-be11-441f-bf12-ca10217de356
# ╟─c0aaede5-b123-41f0-9bbe-5ecc1c9a5565
# ╠═9827a84f-3bdd-4d5d-8c71-1c5ee03071d2
# ╠═b2da90f9-0956-4524-a37d-f61060895fba
# ╠═9afe5703-f5b2-4b9a-8c09-98e391f4dd4f
# ╠═70ff1f7f-7b75-41be-8a75-a55f01f15d07
# ╟─e7953a83-e3a5-4aa1-96e9-3fc97097c39b
# ╠═1001a5f8-ca65-4c74-b37b-ba93b45ee03a
# ╟─62ba091a-28fa-4a3e-a3a3-46d1af9d44aa
# ╠═1524d077-50bd-4d1e-b24d-f7c0f56dae4f
# ╟─162083d9-8675-42a7-ada9-68661e780fe7
# ╠═ef577eb3-c1b5-4a5f-a4c0-1b91d506de37
# ╠═41005ba0-7a17-4a39-a09b-dce4ba7468a6
# ╠═cc5bdbcc-8948-4594-aa24-44ae756e2b63
# ╠═11660134-8170-4395-8e90-f025e4120f33
# ╟─a03b76e2-448e-445c-a4ad-e1f24092ca1d
# ╠═ef28fe86-3d0c-416b-afc0-f48f3bbc55f6
# ╠═504af83c-1493-40bf-85c6-c2f8a3b4dce2
# ╠═f3e1c943-4fae-46ec-a2c6-572e8d87e737
# ╠═ea577eea-d419-49c6-bf97-e46f166297eb
# ╠═eb67ef9d-89e3-4e39-b6b4-ff745a41afde
# ╟─4417e958-78d2-4657-bbcf-47290269c142
# ╠═5674824e-c1bc-4812-b55c-1ea724259266
# ╠═e0bd5fce-07bf-4d4e-af43-fb987a767548
# ╟─be010aef-69b9-430d-aa47-1830513fd080
# ╠═df6ff691-2ec0-45c7-b9e9-4490821717d0
# ╠═b9655e52-afc9-46ac-9d62-2f1322312f41
# ╟─1e257341-d557-4418-bffa-0b239eaed474
# ╠═15b7fe48-0952-43aa-bf22-6c919da9b767
# ╠═1e50be2f-869f-4afb-ad12-7034ee426cac
# ╠═a09b5916-a838-49d5-80c1-dcf38772f2bf
# ╠═ba8213f7-0bbb-4b90-89d7-c58d7fb8e57e
# ╠═001487af-807f-44c0-8832-e16302869631
# ╠═c47845fa-db2c-4754-bb8b-3214423dd7c6
# ╠═7f31d9b4-3e81-472b-b28b-5ffa3ee9f690
# ╠═475ccd39-f35d-4a9f-8cc9-1b290e82ae5f
# ╟─cd692296-6fdc-482c-a4b2-a2acbbcd4e1a
# ╠═cbabb0ac-9904-46e6-959d-da09127a2f6f
# ╠═5157b455-7fef-400c-a05c-8cf61f789952
# ╠═aee93ea3-9004-47c4-bc60-f5ce99faf410
# ╠═b93e49f4-7556-4a8e-9f5c-500088afabbe
# ╟─91d8de62-2757-4c2e-946a-6c0829100ca7
# ╠═866e2f20-e142-47a8-bfe1-268f1c5a4088
# ╠═c327e0f1-8b05-4e7b-893e-766c67889b7c
# ╠═ecdce9a8-6764-4446-ab4c-50aca2bc307d
# ╠═2fa027ba-4f19-4753-96cf-fa171c5b90b5
# ╟─c14d6dba-53e3-48a1-800d-6081ee9c7fd3
# ╠═6d149814-de35-4638-91ca-5d042792079f
# ╠═552bcf13-697b-4aac-9d17-dd5bff385cd0
# ╠═9409e754-b7c8-4041-900d-3e5296b7f121
# ╠═844df9d3-5717-4b1c-8944-673dc8794c32
# ╠═de835654-7b99-4edd-b8ce-c5424a0b3840
# ╠═a43145f4-fb8d-4fd2-a801-aadc92a6bb87
# ╟─13897801-be30-4389-8eb9-04f71bde6856
# ╠═b28cb70c-6e7a-431d-b050-fd8a6333ee11
# ╠═0b9fb4e1-c994-42a8-bcdc-fc27e33647b0
# ╟─bab9dacd-35b5-436c-8e68-104a15168868
# ╟─7eb92b9a-b3ad-428a-9c2f-1daea7ff372a
# ╠═f20f561a-eb19-47a8-9e0f-0dd11290a03e
# ╠═4913b08a-b48e-41fe-b3ed-657bba402565
# ╠═817c22f8-2aa2-4252-9dfa-681178e5e77b
# ╠═5858e67d-cf31-484e-b78a-6e709c8913d6
# ╠═4db3b14b-83fd-430f-a1db-a2d3f754cbd0
# ╠═da0e3e68-56b9-411a-812e-a017a3acf889
# ╠═e20001e4-6c7e-42aa-8071-080a827c54c2
# ╠═e4913e93-d98c-431e-ad80-6dd225b4e1b4
# ╠═7b16ac35-e370-4315-923e-08cad41521ac
# ╠═b0eb9787-4b3a-48c3-a55b-05a928903595
# ╠═08c0aec7-4910-4b0b-8595-efbbb95faf7b
# ╠═0ca76ec6-fb85-45a3-ac33-bbe72ab9a7b8
# ╠═e390a6d4-aa61-405d-9a22-3f9dda1def03
# ╠═3682ff5f-baf7-468c-b26c-bf27aec4d531
# ╠═2c00f8a7-2a2a-4aab-bc73-7f3c6cb36027
# ╠═708ec630-767f-41d5-8f78-1db8fc7c3da2
# ╠═bc5c7623-0e9b-45f4-915a-ae8aaaa5c907
# ╠═66500b7a-c5d9-4633-b760-7e097db73a73
# ╠═6c4514ba-c941-4820-ac86-e799bfcaabb1
# ╠═2cdf39fb-cce6-4b40-a9b4-6989fe680f74
# ╠═8f09aa5e-426d-496f-b059-f2d80fa68fd7
# ╠═412b81b4-c64a-4a2f-b67c-3358cd37cbc9
# ╠═4ff5205b-95ae-4c3e-9667-c264fad7dd82
# ╠═b810e047-9b8b-4283-bfeb-3832d4f5629c
# ╠═58388d13-1c37-4b26-a66b-a4d17d525c3d
# ╠═c8df548c-bf2e-43f0-a31f-471ac19d5bf3
# ╟─6bc09c93-a42d-4163-acb7-a1497cb2f661
# ╠═2fa0fe5b-148f-457c-95cc-eb89f583e43c
# ╠═a4ba78cc-d57d-47dc-b57c-87e964c01270
# ╠═21ca36ec-5fab-4395-9a93-f6ffa8ac3621
# ╟─bcbbbce3-0518-48d0-bd71-d36f146f8263
# ╠═e7806823-034f-42b0-86ef-d55a18fe7b8c
# ╠═71e93945-5ab1-4e40-aaae-bc687fa0885a
# ╠═a17e85f6-aa02-49ca-8c39-9a951d83bbf4
# ╟─b96a5b8a-3510-4678-ae5a-6d21495d3646
# ╠═943a5439-c784-441d-a7c3-ac9ff67294ab
# ╠═6545836c-4d87-4a5c-bfe0-5fd7aca54ee2
# ╟─6bd3c386-426a-473c-b910-2e27801ed9bd
# ╠═47ca1f46-d4b7-4a5f-b27f-313e32e721af
# ╠═cce8c0bf-a7af-4964-8941-cecd5981fedd
# ╠═aaaa018e-1590-4257-beaf-ce9fb329d058
# ╟─833e6ab9-c451-4354-9044-41f2b9b0e061
# ╠═53c2f1f3-7105-4cbe-9c88-e7a5eb9317f8
# ╟─2aa9f7d9-36c7-4f61-be65-09a510401e6a
# ╠═f7433142-30a3-4b97-8764-9a676b9cb72f
# ╟─e73ba762-b54f-469b-a5b8-3ec887d728da
# ╠═aae0d50d-132e-4129-9745-1ff923cb3b73
# ╠═e0ec7f7f-6b56-44f9-b472-fae0d1c77d6b
# ╠═b57c030d-8582-4342-9794-580ea8219d2c
# ╠═02c86339-ed33-4a62-8c4d-576196a2a16d
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
