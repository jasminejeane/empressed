class SessionsController < ApplicationController
	
	def new
		
		@stylist = Stylist.new
		render :new
	end

	def create
	stylist_params = params.require(:stylist).permit(:email, :password)    
    # @stylist = Stylist.confirm(stylist_params)
      if @stylist 
        login(@stylist)
        redirect_to current_user
      else
         redirect_to "/sign_in"
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


