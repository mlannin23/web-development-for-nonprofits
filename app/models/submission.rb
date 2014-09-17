class Submission < ActiveRecord::Base
  belongs_to :assignment
  belongs_to :user

  validates :file, presence: true

  has_attached_file :file, :path => "/submissions/:filename"

  validates_attachment_content_type :file, :content_type => [ 'application/zip' ]
end
