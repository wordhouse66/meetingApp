class CreateRugs < ActiveRecord::Migration[5.2]
  def change
    create_table :rugs do |t|
      t.string :name

      t.timestamps
    end
  end
end
