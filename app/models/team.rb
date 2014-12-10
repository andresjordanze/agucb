class Team < ActiveRecord::Base
	attr_accessible :name,:rol,:p_jug,:p_gan,:p_per,:p_emp,:goles,:tar_roj,:tar_ama,:login,:password,:delegado,:email,:phone, :position

	has_many :players, dependent: :destroy
end
