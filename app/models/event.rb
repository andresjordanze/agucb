class Event < ActiveRecord::Base
	attr_accessible :name,:description, :location
end
