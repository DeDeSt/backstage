class Course < ActiveRecord::Base
  has_many :course_options
  has_many :course_blocks

  #attr_accessible :description, :name, :picture, :course_options, :course_blocks

  has_attached_file :picture, styles: { thumb: '200x150>', medium: '320x240>', large: '640x480>' }

  ### Rails admin ###

  rails_admin do

    ###  Course  ###

    #   # You can copy this to a 'rails_admin do ... end' block inside your course.rb model definition

    #   # Found associations:

    configure :course_options, :has_many_association
    configure :course_blocks, :has_many_association

    #   # Found columns:

    #configure :id, :integer
    #configure :name, :string
    #configure :description, :text
    #configure :created_at, :datetime
    #configure :updated_at, :datetime
    #configure :picture, :string

    #   # Cross-section configuration:

    # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
    label 'курс'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'курсы'     # Same, plural
    weight 3                      # Navigation priority. Bigger is higher.
    # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
    navigation_label 'Курсы'             # Sets dropdown entry's name in navigation. Only for parents!

    #   # Section specific configuration:

    list do
      sort_by :id
      field :id do
        sort_reverse false
      end
      field :name
      field :description
      field :picture
      field :course_options
      field :course_blocks
      field :created_at
      field :updated_at
    end


    edit do
      field :name
      field :description
      field :picture
    end

    #     show do; end
    #     edit do; end
    #     export do; end
    #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
    #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
    #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  end
end
