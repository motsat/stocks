class CommandsController < ApplicationController
  def index
    @command_group = CommandGroup.first
  end
  def show
    @command_group = CommandGroup.first
  end
end
