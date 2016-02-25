
class StylistsController < ApplicationController
  # grab the users
  def index
    @stylists = Stylist.all
    render :index
  end

def new
     @stylist = Stylist.new
    render :new
  end

def create
    stylist_params = params.require(:stylist).permit(:first_name, :last_name, :email, :password)
    @stylist = Stylist.new(stylist_params)
    if @stylist.save
      login(@stylist)
      redirect_to edit_stylist_path(@stylist)
    else
      render :new
    end
    # redirect_to "/stylists/#{@stylist.id}/edit"

    # redirect_to "/stylists/#{@stylist.id}"


    #didn't got to that stylists id in url
#actually want the above page to redirect to another form welcome page 
#this other form will have all the other db details
  end

  def edit
    @stylist = current_user
    render :edit
  end

  def update
    # authorization check
    if current_user.id == params[:id].to_i
      # allow update
      current_user.update_attributes(stylist_params)
      redirect_to current_user
    else
      # drop them back on the edit page
      redirect_to edit_stylist_path(current_user)
    end
    # pull out params
    # find the stylist (current_user)
    # .update_attributes

    # redirect_to "/stylists/#{@stylist.id}"



    # <%= @stylist.school %>
  end

def show
    @stylist = Stylist.find(params[:id])
    render :show
  end

  def stylist_params
    params.require(:stylist).permit(:speciality, :salon, :school, :bio, :headshot, :license)
  end

end

	

