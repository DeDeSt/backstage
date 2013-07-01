class CourseBlock < ActiveRecord::Base
  belongs_to :course
  attr_accessible :name, :picture, :text, :course_id
  has_attached_file :picture, styles: { thumb: '200x150>', medium: '320x240>', large: '640x480>' }
  attr_accessor :delete_picture
  before_validation { self.picture.clear if self.delete_picture == '1' }

  ### Rails admin ###

  rails_admin do
    ###  CourseBlock  ###

    #   # You can copy this to a 'rails_admin do ... end' block inside your course_block.rb model definition

    #   # Found associations:

    configure :course, :belongs_to_association

    #   # Found columns:

    #configure :id, :integer
    configure :name, :string
    configure :text, :text
    #configure :course_id, :integer         # Hidden
    #configure :created_at, :datetime
    #configure :updated_at, :datetime

    #   # Cross-section configuration:

    #object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
    label 'блок'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'блоки'      # Same, plural
    weight 5                      # Navigation priority. Bigger is higher.
    parent Course             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
    #navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

    #   # Section specific configuration:

    list do
      #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
      #       # items_per_page 100    # Override default_items_per_page

      sort_by :id           # Sort column (default is primary key)
      field :id do
        sort_reverse false     # Sort direction (default is true for primary key, last created first)
      end
      field :name
      field :text
      field :picture
      field :course
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
