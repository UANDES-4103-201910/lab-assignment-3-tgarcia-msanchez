class AddTicketInformationRefToTicketOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :ticket_orders, :Ticket_information, foreign_key: true
  end
end
