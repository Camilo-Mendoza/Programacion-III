defmodule TransponerMatriz do
  def main do
    matriz = [[1, 2, 3],
              [4, 5, 6]]
    IO.inspect(transponer(matriz))
  end

  def transponer([]), do: []
  def transponer([[] | _]), do: []

  def transponer(matriz) do
    primera_columna = Enum.map(matriz, &hd/1)
    resto_matriz = Enum.map(matriz, &tl/1)
    [primera_columna | transponer(resto_matriz)]
  end
end
TransponerMatriz.main()
