class Event < ActiveRecord::Base
  belongs_to :event_type
  
  has_many :attended_events, dependent: :destroy
  has_many :attendees, through: :attended_events, source: :member
end
