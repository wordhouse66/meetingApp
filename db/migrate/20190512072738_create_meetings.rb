class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
