class Point < ActiveRecord::Base
  attr_accessible :batting, :bowling, :match, :match_id, :team_id
end
