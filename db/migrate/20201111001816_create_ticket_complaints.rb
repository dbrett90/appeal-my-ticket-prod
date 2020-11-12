class CreateTicketComplaints < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_complaints do |t|
      t.string :name
      t.string :email
      t.string :plate_number
      t.string :plate_state
      t.string :ticket_number
    end
  end
end
