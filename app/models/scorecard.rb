class Scorecard < ActiveRecord::Base
	belongs_to :match
  attr_accessible :match_id
end
