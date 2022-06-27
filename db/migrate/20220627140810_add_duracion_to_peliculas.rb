class AddDuracionToPeliculas < ActiveRecord::Migration[7.0]
  def change
    add_column :peliculas, :duracion, :string
  end
end
