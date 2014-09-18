class Assignment < ActiveRecord::Base
  has_many :submissions

  validates :title, presence: true
  validates :url, presence: true

  has_attached_file :file, :path => "assignments/:filename"

  validates_attachment_content_type :file, :content_type => [ 'application/zip' ]
end
