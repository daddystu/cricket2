class BattingLine < ActiveRecord::Base
  attr_accessible :balls, :batsman_id, :bowler, :fours, :how_out, :innings_id, :is_out, :runs, :sixes
end
