#1. Crear tupla
# Crea una tupla con un átomo, una cadena y un número.
tupla = {:ok, "exito", 200}
IO.inspect(tupla)
# {:ok, "exito", 200}

#2. Acceso con elem
# Usa elem para obtener el segundo elemento de la tupla.
IO.puts(elem(tupla, 1))   # exito

#3. Modificar con put_elem
# Cambia el tercer valor de la tupla a 404.
tupla2 = put_elem(tupla, 2, 404)
IO.inspect(tupla2)
# {:ok, "exito", 404}

#4. Tupla a lista
# Convierte una tupla en lista con Tuple.to_list y recórrela con Enum.each.
lista = Tuple.to_list(tupla)
Enum.each(lista, fn elem ->
  IO.inspect(elem)
  # :ok
  # "exito"
  # 200
end)

#5. Lista a tupla
# Convierte la lista [1,2,3] en tupla.
tupla3 = List.to_tuple([1,2,3])
IO.inspect(tupla3)
# {1, 2, 3}

#6. Función dividir/2
# Retorna una tupla {:ok, resultado} si el divisor no es cero,
# o {:error, "División por cero"} si lo es.
defmodule Matematica do
  def dividir(a, b) do
    if b != 0 do
      {:ok, a / b}
    else
      {:error, "División por cero"}
    end
  end
end

IO.inspect(Matematica.dividir(10, 2))   # {:ok, 5.0}
IO.inspect(Matematica.dividir(10, 0))   # {:error, "División por cero"}

#7. Desestructuración
# Desestructura la tupla {:ok, "Hola", 42} en tres variables.
{estado, saludo, numero} = {:ok, "Hola", 42}
IO.puts("Estado: #{estado}")   # Estado: ok
IO.puts("Saludo: #{saludo}")   # Saludo: Hola
IO.puts("Número: #{numero}")   # Número: 42

#8. Explicación de rendimiento
# Las tuplas son más rápidas para acceder a un elemento que las listas
# porque se almacenan de forma contigua en memoria y permiten acceso directo
# a un índice. En cambio, las listas son estructuras enlazadas y requieren
# recorrer los nodos hasta llegar al elemento deseado.
a
