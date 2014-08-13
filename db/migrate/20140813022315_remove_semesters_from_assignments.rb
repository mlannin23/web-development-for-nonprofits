class RemoveSemestersFromAssignments < ActiveRecord::Migration
  def change
    remove_reference :assignments, :semester
  end
end
