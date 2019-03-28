class TicketInformation < ApplicationRecord
	has_one :event_information,
	belongs_to :ticket_order
end
