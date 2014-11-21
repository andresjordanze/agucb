class Player < ActiveRecord::Base
	attr_accessible :name,:lastname,:career, :goals, :t_ama, :t_roj, :team_id
	belongs_to :team

	def full_name
		self.name+" "+self.lastname
	end
end
