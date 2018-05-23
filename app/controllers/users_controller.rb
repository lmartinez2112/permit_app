class UsersController < ApplicationController
	def index
		
	end

	def reports
		@users = User.all
	end
end
