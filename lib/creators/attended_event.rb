class Creators::AttendedEvent 
  def create(member, event, conditions)
    attended_event = ::AttendedEvent.create!(member_id: member.id, event_id: event.id)
    
    if conditions[:drove]
      ReimbursementMailer.reimbursement_email(member, event).deliver_later
      
      attended_event.update_attributes!(member_drove: true)
    end
    
    member.add_volunteer_hours(event.volunteer_hours)
    
    attended_event
  end
end