class ReimbursementMailer < ApplicationMailer
  default from: 'do-not-reply@example.com'
  
  def reimbursement_email
    mail(to: 'michaelaranda0.web@gmail.com', subject: 'Reimbursement Email Test - UCSD Tzu Ching Club Manager')
  end
end
