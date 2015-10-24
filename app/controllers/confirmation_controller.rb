class ConfirmationController < ApplicationController

	# Routes to confirmation#index
	def index
		@member=Member.all
	end

end