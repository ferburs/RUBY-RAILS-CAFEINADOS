class AddLinktrailerToPeliculas < ActiveRecord::Migration[7.0]
  def change
    add_column :peliculas, :linktrailer, :string
  end
end
