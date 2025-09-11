mi_mapa = %{"nombre" => "Elixir", "version" => 1.15}
mi_mapa_atom = %{nombre: "Elixir", version: 1.15}

Map.get(mi_mapa, "nombre")  # => "Elixir"
Map.get(mi_mapa, "autor", "Desconocido")  # => "Desconocido" (valor por defecto)
mi_mapa_atom.version  # => 1.15
mi_mapa[:nombre]  # => "Elixir"
%{nombre: e} = mi_mapa


Enum.each(mi_mapa, fn {clave, valor} ->
  IO.puts "#{clave}: #{valor}"
end)
