class TicketFormSubmissionMailer < ApplicationMailer
    def ticket_successfully_submitted(email)
        mail to: email, cc: "appealmyticketbot@gmail.com", subject: "Your Appeal has Been Submitted"
    end
end