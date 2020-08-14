class Match < ApplicationRecord
  belongs_to :home_team, class_name: 'Fantasyteam'
  belongs_to :visitor_team, class_name: 'Fantasyteam'
end
