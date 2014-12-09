class Card < ActiveRecord::Base
	attr_accessible :match_id, :team_id, :player_id, :type, :number

	self.inheritance_column = nil
end
