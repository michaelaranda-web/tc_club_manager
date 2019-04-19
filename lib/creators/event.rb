class Creators::Event 
  def create_from_post(attendees_param, event_params)
    event = ::Event.create!(event_params)
    
    attendees_param.each do |attendee_param|
      options = {
        drove: attendee_param[:drove] == "true"
      }
      
      Creators::AttendedEvent.new.create(Member.find(attendee_param[:id]), event, options)
    end
    
    event
  end
end