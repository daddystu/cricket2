class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.int :match_id
      t.int :team_id
      t.int :batting
      t.int :bowling
      t.int :match

      t.timestamps
    end
  end
end
