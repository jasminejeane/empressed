class Client < ActiveRecord::Base

	 has_many :reservations  
  	 has_many :clients, through: :reservations

	has_secure_password

end
