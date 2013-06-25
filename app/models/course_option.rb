class CourseOption < ActiveRecord::Base
  belongs_to :course
  attr_accessible :duration, :name, :price
end
