class Publication < ActiveRecord::Base
	attr_accessible :title,:description, :id_event_or_activity, :photo

	has_attached_file :photo
  	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
