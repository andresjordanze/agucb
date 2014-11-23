class Scorer < ActiveRecord::Base
	attr_accessible :match_id, :team_id, :player_id, :goals
end
