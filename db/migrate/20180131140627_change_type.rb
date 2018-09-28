class ChangeType < ActiveRecord::Migration
  def self.up
    change_column :people, :birthday, :datetime
  end
 
  def self.down
    change_column :people, :birthday, :string
  end
end
