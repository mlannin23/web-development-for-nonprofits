class AssociateAssignmentsWithUsers < ActiveRecord::Migration
  def change
    add_reference :submissions, :user, index: true
  end
end
