class CreateEventTypes < ActiveRecord::Migration
  def change
    create_table :event_types do |t|
      t.string :name
      t.float :volunteer_hours, :default => 0.0
      t.float :driving_distance, :default => 0.0
      t.time :start_time
      t.time :end_time

      t.timestamps null: false
    end
  end
end
