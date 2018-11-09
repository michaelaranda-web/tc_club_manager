module CustomAdmin  
  class EventsController < ApplicationController
    layout 'admin'
    
    def add_event
      @event_types = EventType.all
    end
  end
end