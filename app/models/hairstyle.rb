class Hairstyle < ActiveRecord::Base
  has_many :services
  rails_admin do

    ###  Portfolio  ###

    # Cross-section configuration:

    # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
    label 'категории'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'категории'     # Same, plural
    weight 7                      # Navigation priority. Bigger is higher.
                                   # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
    navigation_label 'Категории'             # Sets dropdown entry's name in navigation. Only for parents!

    #   # Section specific configuration:

    list do
      sort_by :id
      field :id do
        sort_reverse false
      end
      field :name
      field :created_at
      field :updated_at
    end


    edit do
      field :name
    end

    #     show do; end
    #     edit do; end
    #     export do; end
    #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
    #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
    #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  end
end
