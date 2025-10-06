defmodule SumaObjetivo do
  def main do
    lista = [2, 3, 5, 7]
    objetivo = 10

    IO.inspect(combinaciones(lista, objetivo))
  end

  # Caso base: objetivo alcanzado → combinación válida
  def combinaciones(_, 0), do: [[]]

  # Caso base: lista vacía o objetivo negativo → sin solución
  def combinaciones([], _), do: []
  def combinaciones(_, objetivo) when objetivo < 0, do: []

  # Caso recursivo: tomar o no tomar el primer elemento
  def combinaciones([h | t], objetivo) do
    incluir = for c <- combinaciones(t, objetivo - h), do: [h | c]
    excluir = combinaciones(t, objetivo)
    incluir ++ excluir
  end
end

SumaObjetivo.main()

#profe, me toco hacerlo con gpt estaba muy duro ;(
