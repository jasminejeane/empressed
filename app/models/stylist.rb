class Stylist < ActiveRecord::Base
	validates :email, uniqueness: true
	has_secure_password

	has_many :messages
	has_many :reservations  
  	has_many :clients, through: :reservations

	def self.confirm(params)
		@stylist = Stylist.find_by({email: params[:email]})
		@stylist.try(:authenticate, params[:password])
	end
end
