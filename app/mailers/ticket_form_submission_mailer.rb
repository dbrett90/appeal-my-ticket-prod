class TicketFormSubmissionMailer < ApplicationMailer
    def contact(user_name, user_email, user_how, user_msg)
        @user_name = user_name
        @user_email = user_email
        @user_how = user_how 
        @user_msg = user_msg
        mail to: "appealmyticketbot@gmail.com", subject: "Support Required"
    end

    def ticket_successfully_submitted(email)
        mail to: email, cc: "appealmyticketbot@gmail.com", subject: "Your Appeal has Been Submitted"
    end
end