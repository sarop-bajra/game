class Fantasyteam < ApplicationRecord

  has_and_belongs_to_many :players
  belongs_to :user, optional: true
  has_many :teams, through: 'players'

  has_many :home_match_relationships, class_name: 'Match', foreign_key: 'home_id', dependent: :destroy
  has_many :visitor_match_relationships, class_name: 'Match', foreign_key: 'visitor_id', dependent: :destroy

  has_many :home_matches, through: 'home_match_relationships', source:'visitor_team'
  has_many :visitor_matches, through: 'visitor_match_relationships', source: 'home_team'


end
