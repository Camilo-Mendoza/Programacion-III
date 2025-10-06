defmodule InvertirLista do
  def main do
    lista = [1, 2, 3, 4, 5]
    IO.inspect(invertir(lista))
  end

  def invertir([]), do: []

  def invertir([h | t]) do
    invertir(t) ++ [h]
  end
end
InvertirLista.main()
