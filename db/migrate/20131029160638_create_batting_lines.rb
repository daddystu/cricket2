class CreateBattingLines < ActiveRecord::Migration
  def change
    create_table :batting_lines do |t|
      t.int :innings_id
      t.int :batsman_id
      t.int :runs
      t.string :balls
      t.int :fours
      t.int :sixes
      t.boolean :is_out
      t.string :how_out
      t.string :bowler

      t.timestamps
    end
  end
end
