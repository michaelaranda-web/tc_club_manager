class ReimbursementsController < ApplicationController
  before_action :check_for_existing_reimbursement, only: [:reimbursement_request]
  
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
  
  def reimbursement_already_exists
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
    
    def check_for_existing_reimbursement
      reimbursement_exists = Reimbursement.find_by(
        member_id: reimbursement_params[:member_id],
        event_id: reimbursement_params[:event_id]
      )
      
      if reimbursement_exists
        redirect_to reimbursement_already_exists_path
      end
    end
end
