class Appointment < ApplicationRecord
  belongs_to :pet
  belongs_to :lesson
end
