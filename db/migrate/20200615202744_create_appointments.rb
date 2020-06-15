class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.integer :superhero_id
      t.string :day
      t.time :start_time
      t.time :end_time
      t.string :location
      t.text :description_of_service

      t.timestamps
    end
  end
end
