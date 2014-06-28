class Lesson < ActiveRecord::Base
  belongs_to :semester
  has_many :presentations, dependent: :destroy
end
