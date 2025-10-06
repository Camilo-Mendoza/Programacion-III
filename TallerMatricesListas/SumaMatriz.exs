defmodule SumarMatriz do
  def main do
    matriz = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    IO.puts("Suma total: #{sumar(matriz)}")
  end

  def sumar(matriz) do
    matriz
    |> Enum.map(fn fila -> Enum.sum(fila) end)
    |> Enum.sum()
  end
end
SumarMatriz.main()
