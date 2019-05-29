class RemoveAppointment < ActiveRecord::Migration[5.2]
  def change
  	remove_table :appointments
      
  end
end
