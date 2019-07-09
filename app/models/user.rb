class User < ApplicationRecord
  has_secure_password
  has_many :pets

  validates :name, presence: true
  validates :username, presence: true
  validates :password, presence: true
end
