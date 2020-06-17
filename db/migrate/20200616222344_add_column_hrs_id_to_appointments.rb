class AddColumnHrsIdToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :hrs_id, :integer, default: nil 
  end
end
