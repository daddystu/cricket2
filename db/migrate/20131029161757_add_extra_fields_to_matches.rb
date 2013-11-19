class AddExtraFieldsToMatches < ActiveRecord::Migration
  def change
  	add_column :matches, :played_on, :date
  	add_column :matches, :venue_id, :integer
  	add_column :matches, :match_type_id, :integer
  	add_column :matches, :home_team_id, :integer
  	add_column :matches, :away_team_id, :integer
  	add_column :matches, :status, :string
  end
end
