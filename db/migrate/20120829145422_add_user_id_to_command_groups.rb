class AddUserIdToCommandGroups < ActiveRecord::Migration
  def change
    add_column :command_groups, :user_id, :integer, :after => :command_summary
  end
end
