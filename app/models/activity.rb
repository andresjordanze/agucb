class Activity < ActiveRecord::Base
	attr_accessible :title,:description, :location
end