class Student < ActiveRecord::Base
  has_many :course_students
  belongs_to :course
end
