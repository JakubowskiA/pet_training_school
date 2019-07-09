class AddPhoneNumberToSchools < ActiveRecord::Migration[5.2]
  def change
    add_column :schools, :phone_number, :integer
  end
end
