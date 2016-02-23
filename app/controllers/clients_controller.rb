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
    @client = client.create(client_params)

    redirect_to "/clients"
#actually want the above page to redirect to another form welcome page 
#this other form will have all the other db details
  end

def show
    @client = client.find(params[:id])
    render :show
  end

end
