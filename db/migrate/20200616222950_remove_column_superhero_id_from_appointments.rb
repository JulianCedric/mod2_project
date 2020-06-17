class RemoveColumnSuperheroIdFromAppointments < ActiveRecord::Migration[6.0]
  def change
    remove_column :appointments, :superhero_id, :integer
  end
end
