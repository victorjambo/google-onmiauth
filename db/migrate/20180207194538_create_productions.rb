class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.string :name
      t.datetime :timestamp
      t.string :taskid
      t.string :crawl_Type
      t.string :existing
      t.string :sub_project
      t.string :url

      t.timestamps null: false
    end
  end
end
