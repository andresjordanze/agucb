class Associated < ActiveRecord::Base
	attr_accessible :name,:lastname, :phone, :cellphone, :email, :address, :universityDegree, :universityCareer, :yearDegree, :city, :userId
end
