class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :bio
      t.integer :school_id

      t.timestamps
    end
  end
end
