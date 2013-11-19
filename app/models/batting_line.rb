class BattingLine < ActiveRecord::Base
	belongs_to :innings
	belongs_to :batsman, class_name: "player"
  attr_accessible :balls, :batsman_id, :bowler, :fours, :how_out, :innings_id, :is_out, :runs, :sixes
end
