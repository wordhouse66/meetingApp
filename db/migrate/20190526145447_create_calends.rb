class CreateCalends < ActiveRecord::Migration[5.2]
  def change
    create_table :calends do |t|
      t.date :dater

      t.timestamps
    end
  end
end
