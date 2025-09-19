#1. Mapear cuadrados
# Aplica Enum.map para obtener el cuadrado de cada número de la lista.
cuadrados = Enum.map([1,2,3,4,5,6,7,8,9,10], fn x -> x*x end)
IO.inspect cuadrados   # [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]

#2. Filtrar pares
# Usa Enum.filter para extraer solo los números pares de la lista.
pares = Enum.filter([1,2,3,4,5,6], fn x-> rem(x,2)==0 end)
IO.inspect pares       # [2, 4, 6]

#3. Promedio con reduce
# Calcula el promedio sumando con Enum.reduce y dividiendo entre la longitud.
lista = [1,2,3,4,5,6,7,8,9,10]
suma = Enum.reduce(lista, 0, fn x, acc -> acc + x end)
promedio = suma / length(lista)
IO.puts("Promedio: #{promedio}")   # Promedio: 5.5

#4. Concatenación de listas
# Usa ++ para unir dos listas.
lista = [1,2,3] ++ [4,5,6]
IO.inspect(lista)   # [1, 2, 3, 4, 5, 6]

#5. Sustracción de listas
# Usa -- para eliminar elementos de otra lista.
lista = [1,2,3,4,5] -- [2,3]
IO.inspect(lista)   # [1, 4, 5]

#6. Cabeza y cola
# Separa el primer elemento (head) del resto (tail).
[h | t] = [10,20,30,40]
IO.puts("Cabeza: #{h}")   # Cabeza: 10
IO.inspect(t)             # [20, 30, 40]

#7. Lista mixta
# Contiene enteros, cadenas y un mapa; se recorre con Enum.each.
lista_mixta = [42, "Hola", %{nombre: "Camilo"}]
Enum.each(lista_mixta, fn elem ->
  IO.inspect(elem)
  # 42
  # "Hola"
  # %{nombre: "Camilo"}
end)

#8. Insertar al inicio
# Agrega un elemento a la cabeza de la lista con el operador |.
lista = [1,2,3]
nueva = [0 | lista]
IO.inspect(nueva)   # [0, 1, 2, 3]

#9. Acceso con Enum.at
# Obtiene el segundo elemento de la lista (índice 1).
valor = Enum.at([5,10,15], 1)
IO.puts("Segundo elemento: #{valor}")   # Segundo elemento: 10

#10. Convertir rango en lista
# Transforma el rango 1..5 en lista con Enum.to_list.
lista = Enum.to_list(1..5)
IO.inspect(lista)   # [1, 2, 3, 4, 5]
