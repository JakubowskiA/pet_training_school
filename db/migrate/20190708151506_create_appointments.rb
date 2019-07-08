class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer :pet_id
      t.integer :lesson_id

      t.timestamps
    end
  end
end
