class Team < ActiveRecord::Base
	attr_accessible :name,:rol,:p_jug,:p_gan,:p_per,:p_emp,:goles,:tar_roj,:tar_ama,:login,:password,:delegado,:email,:phone, :position

	has_many :players, dependent: :destroy

	validates :name, presence: {:message => "Nombre de equipo: no ingresado"}
	validates :delegado, presence: {:message => "Nombre de delegado: no ingresado"}
	validates :phone, presence: {:message => "Celular o teléfono: no ingresado"}
	validates :login, presence: {:message => "Login: no ingresado"}
	validates :login, uniqueness: {case_sensitive: false, :message => "Login: ya existe"}
	validates :password, presence: {:message => "Contraseña: no ingresada"}



end
