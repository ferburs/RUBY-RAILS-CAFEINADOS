class AddImagenToPelicula < ActiveRecord::Migration[7.0]
  def change
    add_column :peliculas, :imagen, :string
  end
end
