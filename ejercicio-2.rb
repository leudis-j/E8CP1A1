def cantidad_peliculas()
File.open("peliculas.txt", "r") { |file| puts file.readlines.length }
end


cantidad_peliculas
