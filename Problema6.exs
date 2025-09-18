defmodule DescuentoF do
  def main do
    antiguedad = IO.gets("Ingrese la antiguedad del cliente en años: ")
    |> String.trim
    |> String.to_integer()
  verificar_descuento(antiguedad)
  end
  defp verificar_descuento(antiguedad) do
    cond do
       antiguedad < 1 ->
      IO.puts("El cliente no recibe descuento")
      antiguedad > 1 and antiguedad <= 2 ->
        IO.puts("El cliente recibe 10% de descuento")
        antiguedad > 3 and antiguedad <= 6 ->
          IO.puts("El cliente recibe 14% de descuento")
          antiguedad > 6 ->
            IO.puts("El cliente recibe 17% de descuento")
          end
        end
      end
