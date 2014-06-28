class CreatePresentations < ActiveRecord::Migration
  def change
    create_table :presentations do |t|
      t.string :title
      t.string :url
      t.references :lesson, index: true

      t.timestamps
    end
  end
end
