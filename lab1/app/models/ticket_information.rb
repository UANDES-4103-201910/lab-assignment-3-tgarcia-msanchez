class TicketInformation < ApplicationRecord
	has_one :EventInformation
	#belongs_to :TicketOrder
end
