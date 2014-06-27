class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.string :url
      t.references :semester, index: true

      t.timestamps
    end
  end
end
