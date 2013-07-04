class Page < ActiveRecord::Base
  rails_admin do
    ###  User  ###

    # Found columns:
    configure :id, :integer do
      sort_reverse false
    end
    configure :page, :string
    configure :html, :text

    # Cross-section configuration:

    #object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
    label 'страница'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'страницы'      # Same, plural
    weight 6                      # Navigation priority. Bigger is higher.
    # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
    # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

    # Section specific configuration:

    list do
      # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
      # items_per_page 100    # Override default_items_per_page
      sort_by :id           # Sort column (default is primary key)
      field :id do
        sort_reverse false   # will sort id increasing ('asc') first ones first (default is last ones first)
      end
      field :page
      field :html
      field :created_at
      field :updated_at
      #sort_reverse false     # Sort direction (default is true for primary key, last created first)
    end

    show do
      field :page
      field :html
      field :created_at
      field :updated_at
    end

    edit do
      field :page
      field :html, :ck_editor
    end
    #     export do; end
    #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
    #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
    #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  end
end
