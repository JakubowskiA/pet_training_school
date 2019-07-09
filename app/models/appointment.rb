class Appointment < ApplicationRecord
  belongs_to :pet
  belongs_to :lesson

  validates :name, presence: true
  validates :species, presence: true
end
