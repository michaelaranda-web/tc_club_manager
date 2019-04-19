# Preview all emails at http://localhost:3000/rails/mailers/reimbursement_mailer
class ReimbursementMailerPreview < ActionMailer::Preview
  def reimbursement_email
    ReimbursementMailer.reimbursement_email(Member.first, Event.first)
  end
end
