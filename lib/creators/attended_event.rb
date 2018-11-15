class Creators::AttendedEvent 
  def create(member, event, conditions)
    attended_event = ::AttendedEvent.create!(member_id: member.id, event_id: event.id)
    
    if conditions[:drove]
      puts "*" * 80
      puts "#{member.name} drove."
      puts "*" * 80
      
      attended_event.update_attributes!(member_drove: true)
    end
    
    member.add_volunteer_hours(event.volunteer_hours)
    
    attended_event
  end
end