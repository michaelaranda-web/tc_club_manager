class AddMemberDroveToAttendedEvent < ActiveRecord::Migration
  def change
    add_column :attended_events, :member_drove, :boolean, default: false
  end
end
