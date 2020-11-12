class AddCityStateOfTicketToTicketComplaint < ActiveRecord::Migration[5.2]
  def change
    add_column :ticket_complaints, :city_state_of_ticket, :text
  end
end
