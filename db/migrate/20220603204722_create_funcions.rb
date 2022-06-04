class CreateFuncions < ActiveRecord::Migration[7.0]
  def change
    create_table :funcions do |t|
      t.references :pelicula, null: false, foreign_key: true
      t.references :sala, null: false, foreign_key: true
      t.datetime :fecha
      t.integer :precio

      t.timestamps
    end
  end
end
