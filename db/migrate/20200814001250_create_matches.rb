class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.integer :home_id
      t.integer :visitor_id
      t.text :winner
      t.integer :home_score
      t.integer :visitor_score

      t.timestamps
    end
  end
end
