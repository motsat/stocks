class CommandGroupsController < ApplicationController
  before_filter :find_command_group, only: [:show, :edit, :destroy, :update]
  def index
    @command_groups = CommandGroup.all
  end

  def new
    @command_group = CommandGroup.new
  end

  def show
  end

  def create
    CommandGroup.transaction do
      Command.transaction do
        command_group = CommandGroup.create params[:command_group]
        command_group.commands = (Command.import_by_plane_text params[:command][:contents])
      end
    end
  end

  def destroy
    @command_group.destroy
    redirect_to root_url
  end

  def edit
  end

  def update
    CommandGroup.transaction do
      Command.transaction do
        @command_group.update_attributes(params[:command_group])
        @command_group.commands.destroy_all
        @command_group.commands = (Command.import_by_plane_text params[:command][:contents])
        redirect_to root_url
      end
    end

    #CommandGroup.transaction do
    #  command_group = CommandGroup.create params[:command_group]
    #  command_group.commands << (Command.import_by_textarea params[:command][:contents])
    #end
  end

  private
  def find_command_group
    @command_group = CommandGroup.find params[:id]
  end
end
