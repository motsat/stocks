class ChangeColumnToCommands < ActiveRecord::Migration
  def up
    rename_column(:commands, :order, :sort)
  end

  def down
  end
end
