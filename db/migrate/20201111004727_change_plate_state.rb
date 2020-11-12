class ChangePlateState < ActiveRecord::Migration[5.2]
  def change
    change_column :ticket_complaints, :plate_state, :text
  end
end
