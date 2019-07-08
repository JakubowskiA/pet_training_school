class Lesson < ApplicationRecord
  belongs_to :trainer
  belongs_to :school
  has_many :pets, through: :appointments
  has_many :appointments
end
