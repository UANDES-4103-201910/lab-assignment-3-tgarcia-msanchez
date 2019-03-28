class User < ApplicationRecord
	belongs_to :Ticket_order
	def persisted?
		true
	end
	
	def most_expensive_ticket_bought
		
	end
end


