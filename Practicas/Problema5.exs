defmodule DescuentoA do
  def main do
    cedula = IO.gets("Ingrese el número de cédula: ")
    |> String.trim()
    |> String.to_integer()

    verificar_descuento(cedula)
  end

  defp verificar_descuento(cedula) do
    if rem(cedula, 1991) == 0 do
      IO.puts("El cliente recibe 50% de descuento")
    else
      IO.puts("El cliente no recibe descuento")
    end
  end
end
