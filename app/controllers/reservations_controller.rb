class ReservationsController < ApplicationController


	def index
    @reservations = Reservation.all
    render :index
  end

def new
     @reservation = Reservation.new
    render :new
  end

def create
   binding.pry
    #i don't think this isn't going to matter
    @reservation = Reservation.create(client_id:current_user.id, stylist_id:params[:id])

    redirect_to root_path
#actually want the above page to redirect to another form welcome page 
#this other form will have all the other db details
  end





def show
    @reservation = reservation.find(params[:id])
    render :show
  end

end
