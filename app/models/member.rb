class Member < ActiveRecord::Base
  has_many :attended_events
  has_many :events_attended, through: :attended_events, source: :event
end
