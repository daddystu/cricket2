class MatchType < ActiveRecord::Base
	has_many :Matches  
  attr_accessible :name
end
