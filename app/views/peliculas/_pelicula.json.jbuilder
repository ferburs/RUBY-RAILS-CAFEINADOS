json.extract! pelicula, :id, :titulo, :descripcion, :director, :created_at, :updated_at
json.url pelicula_url(pelicula, format: :json)
