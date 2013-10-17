class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_menu_data

  def load_menu_data
    @courses = Course.order(:id)
    @address = 'ул. Краковская 15/17 офис №169, Днепровский район, Киев 02094'
    @address_short = 'ул. Краковская 15/17, Киев'
    @phone1 = '+38(067)143-26-96'
    @phone2 = '+38(050)247-63-58'
    @active_menu = active_menu
  end

  def active_menu
    controller = params[:controller]
    action = params[:action]
    active = nil
    case controller
      when 'home'
        active = action
      when 'users'
        active = 'team'
      when 'pricelist'
        if action == 'courses'
          active = 'pricelist_courses'
        else
          active = {:controller => controller, :action => action}
        end
      when 'courses'
        if params[:id]
          active = {:controller => controller, :action => action, :course_id => params[:id]}
        else
          active = {:controller => controller, :action => action}
        end
      else
        active = {:controller => controller, :action => action}
    end
    return active
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, :alert => exception.message
  end
end
