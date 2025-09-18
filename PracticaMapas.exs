#1. Crear mapa
# Crea un mapa con las claves :nombre, :edad y :profesion.
mapa = %{nombre: "Camilo", edad: 17, profesion: "Estudiante"}
IO.inspect(mapa)
# %{edad: 17, nombre: "Camilo", profesion: "Estudiante"}

#2. Acceso con Map.get
# Usa Map.get para acceder a la clave :nombre.
IO.puts(Map.get(mapa, :nombre))   # Camilo

#3. Acceso directo con .
# Accede a la clave :edad directamente con .
IO.puts(mapa.edad)   # 17

#4. Agregar nueva clave
# Agrega la clave :ciudad con Map.put.
mapa2 = Map.put(mapa, :ciudad, "Bogotá")
IO.inspect(mapa2)
# %{ciudad: "Bogotá", edad: 17, nombre: "Camilo", profesion: "Estudiante"}

#5. Actualizar clave existente
# Actualiza la clave :edad con la sintaxis %{mapa | clave: valor}.
mapa3 = %{mapa2 | edad: 30}
IO.inspect(mapa3)
# %{ciudad: "Bogotá", edad: 30, nombre: "Camilo", profesion: "Estudiante"}

#6. Eliminar clave
# Elimina la clave :profesion con Map.delete.
mapa4 = Map.delete(mapa3, :profesion)
IO.inspect(mapa4)
# %{ciudad: "Bogotá", edad: 30, nombre: "Camilo"}

#7. Verificar existencia de clave
# Comprueba si la clave :ciudad existe en el mapa.
IO.puts(Map.has_key?(mapa4, :ciudad))   # true

#8. Iterar sobre el mapa
# Recorre el mapa con Enum.each e imprime cada clave y valor.
Enum.each(mapa4, fn {clave, valor} ->
  IO.puts("#{clave}: #{valor}")
  # nombre: Camilo
  # edad: 30
  # ciudad: Bogotá
end)
