class Lesson < ActiveRecord::Base
  has_many :presentations, dependent: :destroy
  has_many :tutorials, dependent: :destroy
end
