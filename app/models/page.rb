class Page < ActiveRecord::Base

	validates_uniqueness_of :url

	rails_admin do
		label 'SEO страница'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    	label_plural 'SEO страницы'      # Same, plural
    	weight 9
    	list do
	      # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
	      items_per_page 50    # Override default_items_per_page
	      sort_by :id           # Sort column (default is primary key)

	      field :url
	      field :title
	      field :description
	      field :body
	      #sort_reverse false     # Sort direction (default is true for primary key, last created first)
	    end

	    show do
	      field :url
	      field :title
	      field :description
	      field :body
	      field :created_at
	      field :updated_at
	    end

	    edit do
	      field :url
	      field :title
	      field :description
	      field :body, :ck_editor
	    end
	end
end
