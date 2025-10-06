defmodule ContarElementosPares do
  def main do
    lista = [1,2,3,4,5,6,7,8,9,10]
    IO.inspect("Cantidad de números pares: #{contarPar(lista)}")
  end

  def contarPar([]), do: 0

  def contarPar([h | t]) do
    if rem(h, 2) == 0 do
      1 + contarPar(t)
    else
      contarPar(t)
    end
  end
end
ContarElementosPares.main()
