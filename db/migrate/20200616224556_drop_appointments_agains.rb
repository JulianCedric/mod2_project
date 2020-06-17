class DropAppointmentsAgains < ActiveRecord::Migration[6.0]
    def change
      drop_table :appointments_agains 
    end
  end
  