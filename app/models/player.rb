class Player < ActiveRecord::Base
	attr_accessible :name,:lastname,:career, :goals, :t_ama, :t_roj, :team_id
	belongs_to :team
end
