defmodule SumaObjetivoExiste do
  def main do
    lista = [2, 4, 7, 11]
    objetivo = 9

    if existe_combinacion?(lista, objetivo) do
      IO.puts("Existe una combinación que suma #{objetivo}")
    else
      IO.puts("No existe combinación que sume #{objetivo}")
    end
  end

  def existe_combinacion?(_, 0), do: true
  def existe_combinacion?([], _), do: false
  def existe_combinacion?(_, objetivo) when objetivo < 0, do: false
  def existe_combinacion?([h | t], objetivo) do
    existe_combinacion?(t, objetivo - h) or existe_combinacion?(t, objetivo)
  end
end

SumaObjetivoExiste.main()
