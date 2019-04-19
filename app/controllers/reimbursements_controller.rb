class ReimbursementsController < ApplicationController
  def reimbursement_request
    member = Member.find(reimbursement_params[:member_id])
    event = Event.find(reimbursement_params[:event_id])
    options = {
      claimed: reimbursement_params[:claimed] == "true",
      amount: reimbursement_params[:amount]
    }
    
    Creators::Reimbursement.new.create(member, event, options)
    
    render "confirmation"
  end
  
  private
    def reimbursement_params
      params.require(:reimbursement).permit(
        :member_id,
        :event_id,
        :claimed,
        :amount
      )
    end
end
