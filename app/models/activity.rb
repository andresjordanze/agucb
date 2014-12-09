class Activity < ActiveRecord::Base
	attr_accessible :title,:description, :location, :photo

	has_attached_file :photo
  	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
