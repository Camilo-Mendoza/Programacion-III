defmodule Ejercicio2 do
  def main do
    palabra = Util.ingresar("Escribe una palabra:", :texto)
    longitud = String.length(palabra)
    Util.mostrar_mensaje("La palabra tiene #{longitud} letras")
  end
end
Ejercicio2.main()
