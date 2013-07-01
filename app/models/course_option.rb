class CourseOption < ActiveRecord::Base
  belongs_to :course
  attr_accessible :duration, :name, :price_uah, :price_usd, :course_id, :hours, :lessons

  ### Rails admin ###

  rails_admin do
    ###  CourseOption  ###

    #   # You can copy this to a 'rails_admin do ... end' block inside your course_option.rb model definition

    #   # Found associations:

    #     configure :course, :belongs_to_association

    #   # Found columns:

    #     configure :id, :integer
    configure :name, :string
    configure :duration, :integer
    configure :price_usd, :decimal
    #     configure :course_id, :integer         # Hidden
    #     configure :created_at, :datetime
    #     configure :updated_at, :datetime
    configure :price_uah, :decimal
    configure :hours, :integer
    configure :lessons, :integer

    #   # Cross-section configuration:

    #object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
    label 'вариации курса'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'вариации курсов'      # Same, plural
    weight 4                      # Navigation priority. Bigger is higher.
    parent Course             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
    #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

    #   # Section specific configuration:

    list do
      #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
      #       # items_per_page 100    # Override default_items_per_page

      sort_by :id           # Sort column (default is primary key)
      field :id do
        sort_reverse false     # Sort direction (default is true for primary key, last created first)
      end
      field :name
      field :course
      field :duration
      field :price_usd
      field :price_uah
      field :hours
      field :lessons
      field :created_at
      field :updated_at
    end
    #     show do; end
    #     edit do; end
    #     export do; end
    #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
    #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
    #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  end
end
