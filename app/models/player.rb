class Player < ApplicationRecord
  has_and_belongs_to_many :fantasyteams
  belongs_to :team, optional: true
end
