class Event < ActiveRecord::Base
  has_many :attended_events
  has_many :attendees, through: :attended_events, source: :member
end
