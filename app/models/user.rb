class User < ApplicationRecord
  has_many :fantasyteams

  has_secure_password

  validates :name, length: { minimum: 2 }

  validates :email, presence: true, uniqueness: true
end
