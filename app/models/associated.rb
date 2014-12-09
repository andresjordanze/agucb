class Associated < ActiveRecord::Base
	attr_accessible :name,:lastname, :phone, :cellphone, :email, :address, :universityDegree, :universityCareer, :yearDegree, :city, :userId

	#def self.search(search)
	#  search_condition = "%" + search + "%"
	#  find(:all, :conditions => ['name LIKE ? OR lastname LIKE ?', search_condition, search_condition])
	#end
end
