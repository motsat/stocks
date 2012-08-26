module CommandGroupsHelper
  def commands_for_textarea(commands)
    commands.pluck(:content).join("\r\n")
  end
end
