class ReimbursementMailer < ApplicationMailer
  default from: 'do-not-reply@example.com'
  
  def reimbursement_email(member, event)
    @member = member
    @event = event
    
    mail(to: @member.email, subject: 'Eligible for Driver Reimbursement - UCSD Tzu Ching') if @member.email
  end
end
