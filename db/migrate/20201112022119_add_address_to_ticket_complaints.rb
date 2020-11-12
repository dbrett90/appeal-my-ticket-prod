class AddAddressToTicketComplaints < ActiveRecord::Migration[5.2]
  def change
    add_column :ticket_complaints, :home_address, :text
  end
end
