class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_menu_data

  def load_menu_data
    @courses = Course.all
  end
end
