class EventInformation < ApplicationRecord
	has_one :event_venue,
	belongs_to :ticket_information
	
end
