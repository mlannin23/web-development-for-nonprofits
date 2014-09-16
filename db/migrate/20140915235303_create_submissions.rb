class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :title
      t.references :assignment, index: true

      t.timestamps
    end
  end
end
