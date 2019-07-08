class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.integer :owner_id
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
