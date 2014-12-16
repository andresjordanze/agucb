class Message < ActiveRecord::Base
	attr_accessible :name, :email, :content, :receiver

end
