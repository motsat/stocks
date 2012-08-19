class DeleteCommandGroupsSort < ActiveRecord::Migration
  def up
    remove_column :command_groups, :sort
  end

  def down
  end
end
