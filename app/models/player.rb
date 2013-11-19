class Player < ActiveRecord::Base
	belongs_to :team
	has_many :batting_lines
	has_many :bowling_lines
  attr_accessible :name, :picture, :role, :status, :team_id, :telephone
end
