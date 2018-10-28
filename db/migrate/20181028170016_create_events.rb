class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.float :volunteer_hours
      t.float :driving_distance
      t.text :event_summary
      t.text :comments

      t.timestamps null: false
    end
  end
end
