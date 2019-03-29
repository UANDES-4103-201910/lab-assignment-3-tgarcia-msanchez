class User < ApplicationRecord
	has_many :TicketOrder
	def persisted?
		true
	end
	
	def most_expensive_ticket_bought
		TicketOrder.where(User.id = TicketOrder.user_id)
		
	end
end


