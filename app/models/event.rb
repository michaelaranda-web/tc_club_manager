class Event < ActiveRecord::Base
  belongs_to :event_type
  
  has_many :attended_events
  has_many :attendees, through: :attended_events, source: :member
end
