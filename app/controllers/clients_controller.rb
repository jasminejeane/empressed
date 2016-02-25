class ClientsController < ApplicationController
 
  def index
    @clients = Client.all
    render :index
  end

def new
     @client = Client.new
    render :new
  end
def create
    client_params = params.require(:client).permit(:first_name, :last_name, :email, :password)
     @client = Client.new(client_params)
    if @client.save
      login(@client)
      
      redirect_to edit_client_path(@client)
    else
      render :show
    end
#actually want the above page to redirect to another form welcome page 
#this other form will have all the other db details
  end

  def edit
    @client = Client.find(params[:id])
    render :edit
  end


def update
    # authorization check
    if current_user.id == params[:id].to_i
      # allow update
      current_user.update_attributes(client_params)
      redirect_to current_user
    else
      # drop them back on the edit page
      redirect_to edit_client_path(current_user)
    end
    # pull out params
    # find the stylist (current_user)
    # .update_attributes

    # redirect_to "/stylists/#{@stylist.id}"
    # <%= @stylist.school %>
  end
def show
    @client = Client.find(params[:id])
    render :show
  end

def client_params
  params.require(:client).permit(:headshot, :phone, :bio, :hair_goal, :last_salon_visit, 
    :service, :allergies, :referred_by, :favorite_products, :birthday, :hobbies)
    end

end
