class ChangeColumnToCommandsGroup < ActiveRecord::Migration
  def up
    rename_column(:command_groups, :order, :sort)
  end

  def down
  end
end
