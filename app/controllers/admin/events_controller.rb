module Admin  
  class EventsController < ApplicationController
    layout 'admin'
    
    def add_event
      @event_types = EventType.all
      @members = Member.all
      
      event_types = []
      EventType.all.each do |event_type|
        event_type_data = {
          id: event_type.id,
          name: event_type.name,
          volunteer_hours: event_type.volunteer_hours,
          driving_distance: event_type.driving_distance,
          start_time_hour: event_type.try(:start_time).try(:hour),
          start_time_minutes: event_type.try(:start_time).try(:min),
          end_time_hour: event_type.try(:end_time).try(:hour),
          end_time_minutes: event_type.try(:end_time).try(:min)
        }
        
        event_types.push(event_type_data)
      end
      
      @event_types = event_types
    end
  end
end