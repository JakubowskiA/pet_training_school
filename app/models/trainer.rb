class Trainer < ApplicationRecord
  belongs_to :school
  has_many :lessons
  has_many :appointments, though: :lessons
end
