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
    reservation_params = params.require(:reservation).permit(:first_name, :last_name, :email, :password)
    #i don't think this isn't going to matter
    @reservation = Reservation.create(reservation_params)

    redirect_to "/reservations"
#actually want the above page to redirect to another form welcome page 
#this other form will have all the other db details
  end

def show
    @reservation = reservation.find(params[:id])
    render :show
  end

end
