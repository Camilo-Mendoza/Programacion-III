defpmodule NumeroMayor do

     numeros = [1,2,3,4,5,6]
     mayor = buscar_mayor(numeros)
     IO.puts("Mayor es: #{mayor}")

  def buscar_mayor([x | resto]) do
    mayor_quelresto = buscar_mayor(resto)

    if x > mayor_quelresto do
      x
    else
      mayor_quelresto
    end
  end

end
