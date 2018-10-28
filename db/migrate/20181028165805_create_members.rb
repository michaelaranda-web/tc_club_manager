class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :nickname
      t.float :volunteer_hours
      t.string :year
      t.string :major
      t.string :email

      t.timestamps null: false
    end
  end
end
