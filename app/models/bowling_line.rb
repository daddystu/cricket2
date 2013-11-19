class BowlingLine < ActiveRecord::Base
	belongs_to :innings
	belongs_to :bowler, class_name: "player"
  attr_accessible :bowler_id, :innings_id, :maidens, :no_balls, :overs, :runs, :wickets, :wides
end
