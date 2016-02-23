
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
    @stylist = Stylist.create(stylist_params)

    redirect_to "/stylists"
#actually want the above page to redirect to another form welcome page 
#this other form will have all the other db details
  end

def show
    @stylist = stylist.find(params[:id])
    render :show
  end

end

	

