class AddDateToRug < ActiveRecord::Migration[5.2]
  def change
    add_column :rugs, :date, :datetime
  end
end
