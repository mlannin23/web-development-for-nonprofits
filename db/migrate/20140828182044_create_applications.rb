class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :year
      t.string :major
      t.string :prerequisite
      t.text :about
      t.text :why
      t.text :experience
      t.text :anything

      t.timestamps
    end
  end
end
