class Team < ActiveRecord::Base
	has_many :players
	has_many :points
	has_many :innings
  attr_accessible :name
end
