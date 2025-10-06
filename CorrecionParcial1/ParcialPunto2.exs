defmodule CineSalas do
  def main do
    salas = %{1 => 50, 2 => 30, 3 => 40}

    IO.puts("Salas (sillas libres): #{inspect(salas)}")

    sala = IO.gets("Ingrese el número de sala: ")
      |> String.trim()
      |> String.to_integer()

    cantidad =
      IO.gets("Ingrese la cantidad de sillas a reservar: ")
      |> String.trim()
      |> String.to_integer()

    salas_actualizado = reservar_sillas(salas, sala, cantidad)

    IO.puts("Estado final de salas: #{inspect(salas_actualizado)}")

    salas_actualizado
  end

  # valida cantidad no positiva
  def reservar_sillas(salas, _sala_num, cantidad) when cantidad <= 0 do
    IO.puts("Cantidad inválida")
    salas
  end

  def reservar_sillas(salas, sala_num, cantidad) do
    cond do
      not Map.has_key?(salas, sala_num) ->
        IO.puts("Sala no encontrada")
        salas

      cantidad > Map.get(salas, sala_num) ->
        IO.puts("No hay suficientes sillas disponible")
        salas

      true ->
        disponibles = Map.get(salas, sala_num)
        nuevas = Map.put(salas, sala_num, disponibles - cantidad)

        IO.puts("Reserva exitosa: sala #{sala_num}, sillas reservadas: #{cantidad}")
        IO.puts("Sillas restantes en sala #{sala_num}: #{disponibles - cantidad}")

        nuevas
    end
  end
end

CineSalas.main()
