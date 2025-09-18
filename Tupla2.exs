#En las tuplas se usan corchetes {}, {valor1,valor2,valor3....etc} ={asignaciondelvalor1,asignaciondelvalor2,asignaciondelvalor3.....etc}
#Una tupla es inmutable
mi_tupla = {ok,"Hola", 123}
#para imprimir cierto valor de la tupla se usa el elem(nombredelatupla, indicedelelemento):
IO.puts(elem(mi_tupla,2)) #esto imprimira el 123
#para saber el tamaño de una tupla:
tuple_size(mi_tupla) # esto deberia retornar 3, de 3 elementos
#para modificar una tupla, en si en si no se modifica sino que se crea una nueva usando el put_elem para cambiar el valor de lo que necesitemos en el indice en el que este
nueva = put_elem(mi_tupla,2,999)
IO.inspect(nueva) # no retornara ok,"Hola",123 sino que retornara ok,"Hola",999
