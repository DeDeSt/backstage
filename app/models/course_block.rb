class CourseBlock < ActiveRecord::Base
  belongs_to :course
  attr_accessible :name, :picture, :text
end
