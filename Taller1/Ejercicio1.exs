defmodule Ejercicio1 do
  def main do
    mensaje = Util.ingresar("Escribe un mensaje:", :texto)
    mensaje_mayus = String.upcase(mensaje)
    Util.mostrar_mensaje(mensaje_mayus)
  end
end

Ejercicio1.main()

