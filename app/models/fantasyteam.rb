class Fantasyteam < ApplicationRecord
  has_and_belongs_to_many :players
  belongs_to :user, optional: true
  has_many :teams, through: 'players'
end
