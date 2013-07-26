class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_menu_data

  def load_menu_data
    @courses = Course.order(:id)
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, :alert => exception.message
  end
end
