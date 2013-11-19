class Venue < ActiveRecord::Base
	has_many :matches
  attr_accessible :address, :name
end
