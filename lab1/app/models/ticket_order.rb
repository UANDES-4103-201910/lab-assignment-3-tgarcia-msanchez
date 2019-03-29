class TicketOrder < ApplicationRecord
	belongs_to :User
	has_one :TicketInformtion
end
