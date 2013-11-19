class CreateScorecards < ActiveRecord::Migration
  def change
    create_table :scorecards do |t|
      t.integer :match_id

      t.timestamps
    end
  end
end
