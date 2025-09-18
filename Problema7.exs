defmodule DescuentoB do
  def main do
    tipoBolsa = IO.gets("Que tipo de bolsa usa el cliente: ")
    |> String.trim
    verificar_descuento(tipoBolsa)
  end
    defp verificar_descuento(tipoBolsa) do
      cond do
        tipoBolsa == "Plastica" ->
          IO.puts("Descuento del 2%")
        tipoBolsa == "Biodegradable" ->
          IO.puts("Descuento del 12%")
        tipoBolsa == "Reutilizable" ->
          IO.puts("Descuento del 17%")
        true ->
          IO.puts("No aplica descuento")
          end
        end
      end
