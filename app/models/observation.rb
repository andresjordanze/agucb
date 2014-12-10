class Observation < ActiveRecord::Base
	attr_accessible :match_id, :team_id, :detail, :referee
end
