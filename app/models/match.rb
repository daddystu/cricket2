class Match < ActiveRecord::Base
	belongs_to :venue
	belongs_to :match_type
	belongs_to :home_team, class_name: "team"
	belongs_to :away_team, class_name: "team"
	has_many :points
	has_many :scorecards
	has_many :innings
	attr_accessible :location
end
