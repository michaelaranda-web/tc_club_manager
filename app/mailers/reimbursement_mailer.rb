class ReimbursementMailer < ApplicationMailer
  default from: 'do-not-reply@example.com'
  
  include ReimbursementsHelper
  
  def reimbursement_email(member, event)
    @member = member
    @event = event
    @reimbursement_amount = reimbursement_dollar_amount(event.driving_distance)
    
    mail(to: @member.email, subject: 'Eligible for Driver Reimbursement - UCSD Tzu Ching') if @member.email
  end
end
