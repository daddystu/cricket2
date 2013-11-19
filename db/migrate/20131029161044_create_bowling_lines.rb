class CreateBowlingLines < ActiveRecord::Migration
  def change
    create_table :bowling_lines do |t|
      t.integer :innings_id
      t.integer :bowler_id
      t.integer :overs
      t.integer :runs
      t.integer :maidens
      t.integer :wickets
      t.integer :no_balls
      t.integer :wides

      t.timestamps
    end
  end
end
