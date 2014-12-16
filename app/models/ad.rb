class Ad < ActiveRecord::Base
	attr_accessible :title, :content, :user_id, :avatar

	has_attached_file :avatar
  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	validates :title, presence: {:message => "Título: no ingresado"}

end
