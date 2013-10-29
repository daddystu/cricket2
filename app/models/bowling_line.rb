class BowlingLine < ActiveRecord::Base
  attr_accessible :bowler_id, :innings_id, :maidens, :no_balls, :overs, :runs, :wickets, :wides
end
