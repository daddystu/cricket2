class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.integer :match_id
      t.integer :team_id
      t.integer :batting
      t.integer :bowling
      t.integer :match

      t.timestamps
    end
  end
end
