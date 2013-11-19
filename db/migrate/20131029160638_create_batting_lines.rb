class CreateBattingLines < ActiveRecord::Migration
  def change
    create_table :batting_lines do |t|
      t.integer :innings_id
      t.integer :batsman_id
      t.integer :runs
      t.string :balls
      t.integer :fours
      t.integer :sixes
      t.boolean :is_out
      t.string :how_out
      t.string :bowler

      t.timestamps
    end
  end
end
