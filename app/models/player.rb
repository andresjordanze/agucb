class Player < ActiveRecord::Base
	attr_accessible :name,:lastname,:career, :goals, :t_ama, :t_roj, :team_id, :photo
	belongs_to :team

	has_attached_file :photo, :styles => {  :medium => "300x300>", :thumb => "100x100>" },
                  :url  => "/:basename.:extension",
                  :path => ":Rails_root/:basename.:extension"

	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

	def full_name
		self.name+" "+self.lastname
	end
end
