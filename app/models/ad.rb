class Ad < ActiveRecord::Base


validates :title, presence: {:message => "Usted debe ingresar el nombre del equipo"}

end
