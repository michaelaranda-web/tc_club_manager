class AddTimesAndDateAndQuarterToEvents < ActiveRecord::Migration
  def change
    add_column :events, :start_time, :time
    add_column :events, :end_time, :time
    add_column :events, :quarter, :string
    add_column :events, :date, :date
  end
end
