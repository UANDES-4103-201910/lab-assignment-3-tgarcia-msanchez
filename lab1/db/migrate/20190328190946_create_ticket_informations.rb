class CreateTicketInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_informations do |t|
      t.integer :price
      t.string :category

      t.timestamps
    
	  

    end

  def price 
  	return t.price 
  end

  end
  
  

end
