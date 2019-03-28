class CreateEventInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :event_informations do |t|
      t.string :name
      t.string :description
      t.date :start_date

      t.timestamps
    end
  end
end
