class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.integer :week
      t.date :date
      t.string :topic
      t.references :semester, index: true

      t.timestamps
    end
  end
end
