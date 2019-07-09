class Pet < ApplicationRecord
  belongs_to :user
  has_many :appointments
  has_many :lessons, through: :appointments

  validates :name, presence: true
  validates :species, presence: true
end
