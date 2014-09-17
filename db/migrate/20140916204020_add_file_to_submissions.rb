class AddFileToSubmissions < ActiveRecord::Migration
  def self.up
    add_attachment :submissions, :file
    remove_column :submissions, :title
  end

  def self.down
    remove_attachment :submissions, :file
    add_column :submissions, :title
  end
end
