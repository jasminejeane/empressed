class Reservation < ActiveRecord::Base
	belongs_to :client
	belongs_to :stylist

after_create :send_message

def send_message
	stylist = self.stylist
	client = self.client
	message = Message.create(to: stylist.first_name, from: client.first_name, body: "Hello, I would love to book an appointment with you!", stylist_id: stylist.id)
end

end
