class AddDatetimesToRug < ActiveRecord::Migration[5.2]
  def change
    add_column :rugs, :datetimes, :string
  end
end
