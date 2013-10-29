class Player < ActiveRecord::Base
  attr_accessible :name, :picture, :role, :status, :team_id, :telephone
end
