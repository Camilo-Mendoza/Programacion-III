defmodule ValidadorPassword do
  def main do
    pass = IO.gets("Ingrese una contraseña: ")
      |> String.trim()

    validar(pass)
    |> IO.inspect()
  end

  def validar(password) do
    errores = []
      |> validar_longitud(password)
      |> validar_mayuscula(password)
      |> validar_numero(password)
      |> validar_espacios(password)

    if errores == [] do
      {:ok, "Contraseña segura"}
    else
      {:error, Enum.join(errores, ", ")}
    end
  end

  defp validar_longitud(lista, pass) do
    if String.length(pass) < 8 do
      lista ++ ["Debe tener al menos 8 caracteres"]
    else
      lista
    end
  end

  defp validar_mayuscula(lista, pass) do
    if String.match?(pass, ~r/[A-Z]/) do
      lista
    else
      lista ++ ["Debe contener al menos una letra mayúscula"]
    end
  end

  defp validar_numero(lista, pass) do
    if String.match?(pass, ~r/[0-9]/) do
      lista
    else
      lista ++ ["Debe contener al menos un número"]
    end
  end

  defp validar_espacios(lista, pass) do
    if String.contains?(pass, " ") do
      lista ++ ["No debe contener espacios"]
    else
      lista
    end
  end
end

ValidadorPassword.main()
