class AddLastseenToPeople < ActiveRecord::Migration
  def change
    add_column :people, :lastseen, :datetime
  end
end
