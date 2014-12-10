class PositionsController < ApplicationController

	def index
		@teams = Team.order(position: :desc)
	end
end
