class CreateInnings < ActiveRecord::Migration
  def change
    create_table :innings do |t|
      t.int :match_id
      t.int :team_id

      t.timestamps
    end
  end
end
