class Point < ActiveRecord::Base
	belongs_to :match
	belongs_to :team
  attr_accessible :batting, :bowling, :match, :match_id, :team_id
end
