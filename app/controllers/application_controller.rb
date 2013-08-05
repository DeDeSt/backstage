class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_menu_data

  def load_menu_data
    @courses = Course.order(:id)
    @address = 'ул. Краковская 15/17 офис №169, Днепровский район, Киев 02094'
    @address_short = 'ул. Краковская 15/17, Киев'
    @phone = '+38(063)787-49-85'
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, :alert => exception.message
  end
end
