class CommandGroup < ActiveRecord::Base
  has_many :commands, :dependent => :destroy
end
