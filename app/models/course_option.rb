class CourseOption < ActiveRecord::Base
  belongs_to :course
  attr_accessible :duration, :name, :price_uah, :price_usd, :course_id, :hours, :lessons
end
