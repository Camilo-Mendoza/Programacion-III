defmodule Ejercicio3 do
  def main do
    nombre = Util.ingresar("Nombre del empleado:", :texto)
    horas  = Util.ingresar("Horas trabajadas:", :entero)
    valor  = Util.ingresar("Valor por hora:", :entero)

    salario_base =
      if horas > 160 do
        160 * valor
      else
        horas * valor
      end

    horas_extra =
      if horas > 160 do
        (horas - 160) * trunc(valor * 1.25)
      else
        0
      end

    salario_neto = salario_base + horas_extra
    mensaje = "Empleado: #{nombre}\nSalario neto: $#{salario_neto}"
    Util.mostrar_mensaje(mensaje)
  end
end
Ejercicio3.main()
