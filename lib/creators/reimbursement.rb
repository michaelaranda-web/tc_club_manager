class Creators::Reimbursement 
  def create(member, event, options)
    reimbursement = ::Reimbursement.create!(
      member_id: member.id,
      event_id: event.id,
      claimed: !!options[:claimed],
      amount: options[:amount] || 0.0
    )
    
    reimbursement
  end
end