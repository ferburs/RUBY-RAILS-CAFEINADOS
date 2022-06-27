class AddActoresToPeliculas < ActiveRecord::Migration[7.0]
  def change
    add_column :peliculas, :actores, :string
  end
end
