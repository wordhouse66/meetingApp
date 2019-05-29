class AddDurationMinutesToMeeting < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :duration_minutes, :integer
  end
end
