class AttendedEvent < ActiveRecord::Base
  belongs_to :event
  belongs_to :member
  
  before_destroy { |record| member.remove_volunteer_hours(event.volunteer_hours) }
end
