class AddCommandGroupIdToCommandReplaces < ActiveRecord::Migration
  def change
    add_column :command_replaces, :command_group_id, :integer, :after => :content
  end
end
