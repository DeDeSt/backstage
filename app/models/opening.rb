class Opening < ActiveRecord::Base
  #attr_accessible :opening_day, :opening_from, :opening_to

  ### Rails admin ###

  rails_admin do
    ###  Opening  ###

    # You can copy this to a 'rails_admin do ... end' block inside your opening.rb model definition

    # Found associations:



    # Found columns:

    #configure :id, :integer
    configure :opening_day, :string
    configure :opening_from, :string
    configure :opening_to, :string
    #     configure :created_at, :datetime
    #     configure :updated_at, :datetime

       # Cross-section configuration:

    #object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
    label 'время работы'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'время работы'      # Same, plural
    weight 2                      # Navigation priority. Bigger is higher.
    #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
    #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

    #   # Section specific configuration:

    list do
      #filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
      #       # items_per_page 100    # Override default_items_per_page
      sort_by :id           # Sort column (default is primary key)
      field :id do
        sort_reverse false   # will sort id increasing ('asc') first ones first (default is last ones first)
      end
      field :opening_day
      field :opening_from
      field :opening_to
    end
    #     show do; end
    #     edit do; end
    #     export do; end
    #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
    #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
    #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  end
end
