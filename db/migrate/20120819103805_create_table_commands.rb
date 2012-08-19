class CreateTableCommands < ActiveRecord::Migration
  def up
    create_table :commands do |t|
      t.integer :command_group_id
      t.string  :content
      t.integer :order, :default=>1
      t.timestamps
    end

    create_table :command_groups do |t|
      t.string :title 
      t.integer :order
      t.timestamps
    end
    create_table :command_replaces do |t|
      t.string :title
      t.string :content
      t.timestamps
    end
  end

  def down
    drop_table :command_replaces, :command_groups, :commands
  end
end
