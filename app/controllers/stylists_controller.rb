
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

def show
    @stylist = Stylist.find(params[:id])
    render :show
  end

end

	

