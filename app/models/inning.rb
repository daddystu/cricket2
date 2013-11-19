class Inning < ActiveRecord::Base
	belongs_to :match
	belongs_to :team
  attr_accessible :match_id, :team_id
end
