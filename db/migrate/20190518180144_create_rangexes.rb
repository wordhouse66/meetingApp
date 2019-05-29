class CreateRangexes < ActiveRecord::Migration[5.2]
  def change
    create_table :rangexes do |t|
      t.datetime :start
      t.datetime :finish

      t.timestamps
    end
  end
end
