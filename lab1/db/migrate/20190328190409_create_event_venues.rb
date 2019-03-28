class CreateEventVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :event_venues do |t|
      t.string :name
      t.string :adress
      t.integer :capacity

      t.timestamps
    end
  end
end
