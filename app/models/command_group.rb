class CommandGroup < ActiveRecord::Base
  has_many :commands, :dependent => :destroy
  has_many :command_replaces, :dependent => :destroy
  before_save :set_command_summary
  belongs_to :user
  accepts_nested_attributes_for :command_replaces

  def set_command_summary
    self.command_summary = self.commands.pluck(:content).join('  ')
  end

  def commands=(a)
    super(a)
    set_command_summary
    self.save!
  end

end
