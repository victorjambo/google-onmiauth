class CreateQualities < ActiveRecord::Migration
  def change
    create_table :qualities do |t|
      t.datetime :timestamp
      t.string :taskid
      t.string :name
      t.integer :score
      t.string :merit

      t.timestamps null: false
    end
  end
end
