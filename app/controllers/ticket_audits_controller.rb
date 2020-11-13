class TicketAuditsController < ApplicationController
  before_action :admin_user
  def index
    @ticket_complaints = TicketComplaint.all
  end

  def show
    @ticket_complaint = TicketComplaint.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  #This would be to remove a complaint after it has been resolved. 
  def destroy
  end
  private
  #Helper function for before action
  def admin_user
    redirect_to(root_path) unless current_user.admin?
  end 
end
