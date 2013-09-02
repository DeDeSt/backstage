module ApplicationHelper
  def default_ckeditor_params
    { :toolbar => 'Easy', :js_content_for => :ckeditor_js, :skin => 'BootstrapCK-Skin', :customConfig => asset_path('ckeditor/config.js') }
  end
end
