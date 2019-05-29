class AddDurationHoursToMeeting < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :duration_hours, :integer
  end
end
