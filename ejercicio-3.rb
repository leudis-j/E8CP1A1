#Crear un método que reciba el archivo peliculas.txt, lo abra y cuente la cantidad total de palabras. El método debe devolver este valor.

def cantidad_palabras()
  File.read("peliculas.txt").split(/[[:space:]]/).reject(&:empty?).size
end

puts cantidad_palabras

#Crear un método similar para que además reciba -como argumento- un string. En este caso el método debe contar únicamente las apariciones de ese string en el archivo.

def cantidad_palabra1(palabra)
File.read("peliculas.txt").scan(/#{palabra}/).length
end

puts cantidad_palabra1("Guerra")
