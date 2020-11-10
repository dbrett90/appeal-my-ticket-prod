Rails.application.routes.draw do
  root 'static_pages#home'
  get '/faqs', to: 'static_pages#faqs'
  get '/ticket-appeal-form', to: 'static_pages#ticket_appeal_form'
  post '/ticket-appeal-form', to: 'static_pages#submit_ticket_appeal_form'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
