class ConfirmationController < ApplicationController

	def index
		@member=Member.all
	end

end