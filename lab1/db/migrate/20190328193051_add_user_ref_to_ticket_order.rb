class AddUserRefToTicketOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :ticket_orders, :User, foreign_key: true
  end
end
