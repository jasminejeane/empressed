class Client < ActiveRecord::Base

	 has_many :reservations  
  	 has_many :stylists, through: :reservations

	has_secure_password

end
