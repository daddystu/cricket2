class CreateBowlingLines < ActiveRecord::Migration
  def change
    create_table :bowling_lines do |t|
      t.int :innings_id
      t.int :bowler_id
      t.int :overs
      t.int :runs
      t.int :maidens
      t.int :wickets
      t.int :no_balls
      t.int :wides

      t.timestamps
    end
  end
end
