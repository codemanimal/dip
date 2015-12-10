class MembersController < ApplicationController
	
	# Routes to members#index
	def index
		redirect_to root_path
	end

	# Routes to members#new
	def new 
		@member = Member.new
	end

	# Routes to members#create
	def create
		@member = Member.new(member_params)
		if @member.save
			redirect_to confirmation_path
		else
			render:new
		end
	end

	# Routes to members#show
	def show
		@member = Member.find(params[:id])
	end

	private

	# Sets user params to be accepted in users#create route
	def member_params
		params.require(:member).permit(:first_name, :last_name, :zipcode, :email, :password, :gender)
	end

end