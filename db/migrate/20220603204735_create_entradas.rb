class CreateEntradas < ActiveRecord::Migration[7.0]
  def change
    create_table :entradas do |t|
      t.references :funcion, null: false, foreign_key: true
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
