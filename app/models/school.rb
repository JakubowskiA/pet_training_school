class School < ApplicationRecord
  has_many :lessons
  has_many :trainers
  has_many :appointments, through: :lessons
end
