class CreateScorecards < ActiveRecord::Migration
  def change
    create_table :scorecards do |t|
      t.int :match_id

      t.timestamps
    end
  end
end
