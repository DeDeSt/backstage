class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable#, :registerable

  # Setup accessible (or protected) attributes for your model
  #attr_accessible :first_name, :last_name, :title, :about, :email, :role, :picture, :password, :password_confirmation, :remember_me

  has_attached_file :picture, styles: { thumb: '200x150>', medium: '320x240>', large: '640x480>' }
  attr_accessor :delete_picture

  # attr_accessible :title, :body
  ROLES = %w[admin user]

  def new?
    return true if self.first_name.blank?
  end

  def has_picture?
    return true if self.picture.blank?
  end

  def admin?
    return true if self.role == 'admin'
  end

  def user?
    return true if self.role == 'user'
  end

  def role? role
    return true if role == self.role
  end

  ### Rails admin ###

  rails_admin do
    ###  User  ###

    # You can copy this to a 'rails_admin do ... end' block inside your user.rb model definition

    # Found associations:



    # Found columns:
    configure :id, :integer do
      sort_reverse false
    end
    configure :first_name, :string
    configure :last_name, :string
    configure :about, :text
    configure :email, :string
    configure :role, :enum do
      enum do
        ROLES
      end
    end


    #     configure :password, :password         # Hidden
    #     configure :password_confirmation, :password         # Hidden
    #     configure :reset_password_token, :string         # Hidden
    #     configure :reset_password_sent_at, :datetime
    #     configure :remember_created_at, :datetime
    #     configure :sign_in_count, :integer
    #     configure :current_sign_in_at, :datetime
    #     configure :last_sign_in_at, :datetime
    #     configure :current_sign_in_ip, :string
    #     configure :last_sign_in_ip, :string
    #     configure :created_at, :datetime
    #     configure :updated_at, :datetime

    # Cross-section configuration:

    #object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
    label 'сотрудник'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'сотрудники'      # Same, plural
    weight 1                      # Navigation priority. Bigger is higher.
    # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
    #navigation_label 'Сотрудники'       # Sets dropdown entry's name in navigation. Only for parents!
    # Section specific configuration:

    list do
      # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
      # items_per_page 100    # Override default_items_per_page
      sort_by :id           # Sort column (default is primary key)

      field :first_name
      field :last_name
      field :about
      field :title
      field :email
      field :role
      field :picture
      #sort_reverse false     # Sort direction (default is true for primary key, last created first)
    end

    show do
      field :first_name
      field :last_name
      field :about
      field :email
      field :title
      field :role
      field :picture
      field :current_sign_in_at
      field :last_sign_in_at
      field :current_sign_in_ip
      field :last_sign_in_ip
      field :created_at
      field :updated_at
    end

    edit do
      field :first_name
      field :last_name
      field :about, :ck_editor
      field :email
      field :title
      field :picture
      field :role
      field :password
      field :password_confirmation
    end

    #     export do; end
    #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
    #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
    #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  end
end
