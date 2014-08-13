class RemoveSemestersFromLessons < ActiveRecord::Migration
  def change
    remove_reference :lessons, :semester
  end
end
