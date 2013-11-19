class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :telephone
      t.string :picture
      t.integer :team_id
      t.string :role
      t.string :status

      t.timestamps
    end
  end
end
