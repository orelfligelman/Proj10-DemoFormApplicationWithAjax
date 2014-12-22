class UsersController < ApplicationController
	def new
		@user = User.new
		@users = User.all
	end

	#permit method is security feature to ensure the only values for the key of user are name and review
	def create
		@user = User.new(params[:user].permit(:name,:review))
		if @user.save
			respond_to do |format|
				format.html { render :json => User.all }
		end
	end
	end
	end
