class Card < ActiveRecord::Base
	attr_accessible :match_id, :team_id, :player_id, :type, :number

	self.inheritance_column = nil

	def correspondeAmatch_id(match_id)
      if match_id == self.match_id
      	return true
      else
      	return false
      end
      #parametros = match_id.split(' ')
      #parametros.each do |parametro|
        #if self.name.downcase.include?(parametro.downcase)
          #return true
        #end
      #end
      #false
    end
end
