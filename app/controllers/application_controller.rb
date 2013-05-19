class ApplicationController < ActionController::Base
  before_filter :authenticate_user!, :load_user
  protect_from_forgery
  def load_user
    @current_user ||= current_user
  end

end
