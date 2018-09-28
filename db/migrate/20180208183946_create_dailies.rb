class CreateDailies < ActiveRecord::Migration
  def change
    create_table :dailies do |t|
      t.string :name
      t.datetime :day
      t.string :task
      t.string :qa

      t.timestamps null: false
    end
  end
end
