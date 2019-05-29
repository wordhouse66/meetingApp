class AddStartTimeToRug < ActiveRecord::Migration[5.2]
  def change
    add_column :rugs, :start_time, :datetime
  end
end
