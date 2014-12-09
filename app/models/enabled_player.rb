class EnabledPlayer < ActiveRecord::Base
	attr_accessible :match_id, :team_id, :player_id, :number

	def full
		self.number.to_s+". "+Player.find(self.player_id).name+" "+Player.find(self.player_id).lastname
	end
end
