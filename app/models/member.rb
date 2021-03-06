class Member < ActiveRecord::Base
  has_many :attended_events
  has_many :events_attended, through: :attended_events, source: :event
  
  after_initialize do
    if new_record?
      self.volunteer_hours ||= 0
    end
  end
  
  def add_volunteer_hours(hours)
    current_volunteer_hours = self.volunteer_hours || 0
    update_attributes(volunteer_hours: current_volunteer_hours + hours)
  end
  
  def remove_volunteer_hours(hours)
    current_volunteer_hours = self.volunteer_hours || 0
    new_hours_count = [0, current_volunteer_hours - hours].max
    update_attributes(volunteer_hours: new_hours_count)
  end
  
  def qualifies_for_uniform?
    return self.volunteer_hours > 15
  end
end
