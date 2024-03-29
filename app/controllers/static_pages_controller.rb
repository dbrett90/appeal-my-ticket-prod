class StaticPagesController < ApplicationController
    def home
    end

    def faqs
    end 

    #Deprecated Method - use ticket complaint controller
    def ticket_appeal_form
        # flash[:danger] = "Test"
    end

    #Deprecated Method - use ticket complain controller
    def submit_ticket_appeal_form
        # flash[:danger] = params
        new_complaint = TicketComplaint.new(name: params[:ticket_appeal][:name], email: params[:ticket_appeal][:email], home_address: params[:ticket_appeal][:address], plate_number: params[:ticket_appeal][:plate_number], plate_state: params[:plate_state], ticket_number: params[:ticket_appeal][:ticket_number], city_state_of_ticket: params[:ticket_appeal][:city_state_of_ticket], additional_complaint_information: params[:ticket_appeal][:additional_complaint_information])
        new_complaint.save
        redirect_to root_path
        flash[:success] = "Your response has been logged and our team will be in touch shortly."
    end

    def contact
    end

    def contact_form
        TicketFormSubmissionMailer.contact(params[:contact][:contact_name], params[:contact][:contact_email], params[:contact][:contact_how], params[:contact][:contact_help]).deliver_now
        flash[:success] = "Your message has been received. We will be in contact shortly."
        redirect_to contact_url
    end

    def index
    end

    def show
    end

    private
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
