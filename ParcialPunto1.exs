defmodule Envio do
  def main do
    peso = IO.gets("Ingrese el peso del paquete (kg): ")
    |> String.trim()
    |> String.to_float()

    tipo_cliente = IO.gets("Ingrese el tipo de cliente (corporativo/estudiante/regular): ")
    |> String.trim()
    |> String.downcase()
    |> String.to_atom()

    tipo_servicio = IO.gets("Ingrese el tipo de servicio (express/estandar): ")

    |> String.trim()
    |> String.downcase()
    |> String.to_atom()

    calcular(peso, tipo_cliente, tipo_servicio)
  end

  defp tarifa_base(peso) when peso > 0 and peso <= 1, do: 8000
  defp tarifa_base(peso) when peso > 1 and peso <= 5, do: 12000
  defp tarifa_base(peso) when peso > 5, do: 20000
  defp tarifa_base(_), do: raise "Peso inválido"

  defp descuento(:corporativo), do: 0.15
  defp descuento(:estudiante), do: 0.10
  defp descuento(:regular), do: 0.0

  defp recargo(:express), do: 0.25
  defp recargo(:estandar), do: 0.0

  defp calcular(peso, tipo_cliente, tipo_servicio) do
    base = tarifa_base(peso)
    desc = base * descuento(tipo_cliente)
    rec = base * recargo(tipo_servicio)
    total = base - desc + rec

    IO.puts("\nTarifa de Envío")
    IO.puts("Peso: #{peso} kg")
    IO.puts("Base: $#{trunc(base)}")
    IO.puts("Descuento: -$#{trunc(desc)}")
    IO.puts("Recargo: +$#{trunc(rec)}")
    IO.puts("Total a pagar: $#{trunc(total)}")

    {:ok, total}
  end
end

Envio.main()
