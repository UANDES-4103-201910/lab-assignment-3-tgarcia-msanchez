class AddEventVenueRefToEventInformation < ActiveRecord::Migration[5.2]
  def change
    add_reference :event_informations, :Event_venue, foreign_key: true
  end
end
