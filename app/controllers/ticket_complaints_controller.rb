class TicketComplaintsController < ApplicationController
  layout 'custom'
  def index
    @ticket_complaint = TicketComplaint.all
  end

  def new
    # render :layout => 'custom'
    @ticket_complaint = TicketComplaint.new 
    @ticket_complaints = TicketComplaint.all
  end

  def edit
  end

  def create
    @ticket_complaint = TicketComplaint.new(ticket_complaint_params)
    if @ticket_complaint.save
        TicketFormSubmissionMailer.ticket_successfully_submitted(params[:ticket_complaint][:email]).deliver_now
        # flash[:danger] = params
        flash[:success] = "Your appeal has been logged. Our team will be in contact shortly."
        redirect_to root_path
    else
        render 'new'
    end
  end

  def update
  end

  def destroy
    TicketComplaint.find(params[:id]).destroy
    flash[:success] = "Ticket Complaint Removed"
    redirect_to ticket_audits_path
  end

  private

  def ticket_complaint_params
    params.require(:ticket_complaint).permit(:name, :email, :plate_number, :plate_state, :ticket_number, :home_address, :city_state_of_ticket, :additional_complaint_information, images: [])
  end

  def us_states
    [
      ['Alabama', 'AL'],
      ['Alaska', 'AK'],
      ['Arizona', 'AZ'],
      ['Arkansas', 'AR'],
      ['California', 'CA'],
      ['Colorado', 'CO'],
      ['Connecticut', 'CT'],
      ['Delaware', 'DE'],
      ['District of Columbia', 'DC'],
      ['Florida', 'FL'],
      ['Georgia', 'GA'],
      ['Hawaii', 'HI'],
      ['Idaho', 'ID'],
      ['Illinois', 'IL'],
      ['Indiana', 'IN'],
      ['Iowa', 'IA'],
      ['Kansas', 'KS'],
      ['Kentucky', 'KY'],
      ['Louisiana', 'LA'],
      ['Maine', 'ME'],
      ['Maryland', 'MD'],
      ['Massachusetts', 'MA'],
      ['Michigan', 'MI'],
      ['Minnesota', 'MN'],
      ['Mississippi', 'MS'],
      ['Missouri', 'MO'],
      ['Montana', 'MT'],
      ['Nebraska', 'NE'],
      ['Nevada', 'NV'],
      ['New Hampshire', 'NH'],
      ['New Jersey', 'NJ'],
      ['New Mexico', 'NM'],
      ['New York', 'NY'],
      ['North Carolina', 'NC'],
      ['North Dakota', 'ND'],
      ['Ohio', 'OH'],
      ['Oklahoma', 'OK'],
      ['Oregon', 'OR'],
      ['Pennsylvania', 'PA'],
      ['Puerto Rico', 'PR'],
      ['Rhode Island', 'RI'],
      ['South Carolina', 'SC'],
      ['South Dakota', 'SD'],
      ['Tennessee', 'TN'],
      ['Texas', 'TX'],
      ['Utah', 'UT'],
      ['Vermont', 'VT'],
      ['Virginia', 'VA'],
      ['Washington', 'WA'],
      ['West Virginia', 'WV'],
      ['Wisconsin', 'WI'],
      ['Wyoming', 'WY']
    ]
  end
  helper_method :us_states
end
