class CommandGroupsController < ApplicationController
  before_filter :find_command_group, only: [:show, :edit, :destroy, :update]
  def index
    @command_groups = @current_user.command_groups
  end

  def new
    @command_group = CommandGroup.new
    @command_group.command_replaces = [CommandReplace.new()]
  end

  def show
  end

  def create
    CommandGroup.transaction do
      Command.transaction do
        command_group = CommandGroup.create params[:command_group].merge(user_id: @current_user.id)
        command_group.commands = (Command.import_by_plane_text params[:command][:contents])
      end
    end
    redirect_to root_url and return
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
        @command_group.commands = (Command.import_by_plane_text params[:command][:contents])
      end
    end
    redirect_to root_url and return
  end

  private
  def find_command_group
    @command_group = @current_user.command_groups.find(params[:id])
  end
end
