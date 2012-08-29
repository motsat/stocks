class CommandGroup < ActiveRecord::Base
  has_many :commands, :dependent => :destroy
  before_save :set_command_summary
  belongs_to :user

  def set_command_summary
    self.command_summary = self.commands.pluck(:content).join('  ')
  end

end