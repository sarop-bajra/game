class CreateFantasyteamsPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :fantasyteams_players do |t|
      t.integer :player_id
      t.integer :fantasyteam_id
    end
  end
end
