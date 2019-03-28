class AddEventInformationRefToTicketInformation < ActiveRecord::Migration[5.2]
  def change
    add_reference :ticket_informations, :event_information, foreign_key: true
  end
end
