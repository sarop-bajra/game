class CreateFantasyteams < ActiveRecord::Migration[5.2]
  def change
    create_table :fantasyteams do |t|
      t.text :name
      t.text :image
      t.integer :user_id

      t.timestamps
    end
  end
end
