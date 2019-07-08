class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :date
      t.integer :trainer_id
      t.integer :school_id
      t.string :species
      t.integer :capacity
      t.boolean :owner_participation
      t.string :description

      t.timestamps
    end
  end
end
