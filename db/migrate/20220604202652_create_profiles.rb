class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :last_name
      t.string :birthdate
      t.string :phone
      t.string :address
      t.string :country
      t.string :city
      t.string :zip
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
