class AddAdditionalComplaintInfoToTicketComplaint < ActiveRecord::Migration[5.2]
  def change
    add_column :ticket_complaints, :additional_complaint_information, :text
  end
end
