class Trainer < ApplicationRecord
  has_secure_password
  belongs_to :school
  has_many :lessons
  has_many :appointments, through: :lessons
end
