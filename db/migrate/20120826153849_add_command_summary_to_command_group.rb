class AddCommandSummaryToCommandGroup < ActiveRecord::Migration
  def change
    add_column :command_groups, :command_summary, :text, :after => :title
  end
end
