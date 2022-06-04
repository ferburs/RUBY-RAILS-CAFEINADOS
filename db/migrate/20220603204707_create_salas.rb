class CreateSalas < ActiveRecord::Migration[7.0]
  def change
    create_table :salas do |t|
      t.string :nombre
      t.integer :capacidad

      t.timestamps
    end
  end
end
