class Semester < ActiveRecord::Base
  has_many :lessons
  has_many :assignments
end
