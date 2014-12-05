class Player < ActiveRecord::Base
	attr_accessible :name,:lastname,:career, :goals, :t_ama, :t_roj, :team_id, :photo
	belongs_to :team

	has_attached_file :photo
  	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

	def full_name
		self.name+" "+self.lastname
	end
end
