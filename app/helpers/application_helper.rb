module ApplicationHelper
  def default_ckeditor_params
    { :toolbar => 'Easy', :js_content_for => :ckeditor_js, :skin => 'BootstrapCK-Skin', :customConfig => asset_path('ckeditor/config.js') }
  end

  def title(page_title, options={})
  	content_for(:title, page_title.to_s)
  	return content_tag(:h1, page_title, options)
  end

  def description(page_description, options={})
  	content_for(:description, page_description.to_s)
  	return content_tag(:h1, page_description, options)
  end
end
