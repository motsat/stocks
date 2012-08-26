# -*- encoding: utf-8 -*-
class Command < ActiveRecord::Base
  default_scope :order => 'sort ASC'
  has_many :command_replaces

  def self.split_line(contents)
    contents.split /\r\n|\r|\n/
  end

  def self.import_by_plane_text(contents)
    commands = []
    self.split_line(contents).each_with_index do |content, index|
      commands << Command.create(content:content, sort:index + 1)
    end
    commands
  end

  def replaced

  end


end
