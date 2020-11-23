class AddTimestampValuesToTicketComplaint < ActiveRecord::Migration[5.2]
  def change
    add_column :ticket_complaints, :created_at, :datetime
    add_column :ticket_complaints, :updated_at, :datetime
  end
end
