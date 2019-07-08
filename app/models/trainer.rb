class Trainer < ApplicationRecord
  belongs_to :school
  has_many :lessons
  has_many :appointments, through: :lessons
end
