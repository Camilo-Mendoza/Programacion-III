defmodule DivideYVenceras do
  def sumar_lista(lista) do
    dividir(lista)
  end

  defp dividir([]), do: 0

  defp dividir([x]), do: x

  defp dividir(lista) do
    {izq, der} = Enum.split(lista, div(length(lista), 2))
    suma_izq = dividir(izq)
    suma_der = dividir(der)
    suma_izq + suma_der
  end
  
end
