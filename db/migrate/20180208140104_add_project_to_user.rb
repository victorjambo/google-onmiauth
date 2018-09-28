class AddProjectToUser < ActiveRecord::Migration
  def change
    add_column :users, :project, :string
  end
end
