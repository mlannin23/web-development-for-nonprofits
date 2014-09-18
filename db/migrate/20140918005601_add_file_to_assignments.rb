class AddFileToAssignments < ActiveRecord::Migration
  def self.up
    add_attachment :assignments, :file
  end

  def self.down
    remove_attachment :assignments, :file
  end
end
