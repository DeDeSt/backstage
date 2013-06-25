class Course < ActiveRecord::Base
  has_many :course_options
  has_many :course_blocks

  attr_accessible :description, :name, :picture
end
