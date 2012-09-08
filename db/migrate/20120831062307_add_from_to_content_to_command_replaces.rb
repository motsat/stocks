class AddFromToContentToCommandReplaces < ActiveRecord::Migration
  def change
    add_column :command_replaces, :from_content, :string, :after => :content
    add_column :command_replaces, :to_content,   :string, :after => :from_content
  end
end
