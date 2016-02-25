class SessionsController < ApplicationController
	
	def new
		#we made this generic
		render :new
	end

	def create
	user = Client.find_by(email: params[:email]) || Stylist.find_by(email: params[:email]) 
	login(user)
    if user.class.name == 'Client'
      redirect_to current_user# client show page (with current_user)
    elsif
      redirect_to current_user# stylist show page (with current_user)
    else
    	# error handling
      render :new
    end
	# find the stylist by email (validate uniquness of email)
	# `stylist.confirm` to check if password is correct
	# if password is correct, login the stylist and redirect to the current_stylist profile page
	# else render new again
	end

	def destroy
		logout
		redirect_to root_path
	end
end


