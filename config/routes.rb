Rails.application.routes.draw do
  get 'ticket_audits/index'
  get 'ticket_audits/show'
  get 'ticket_audits/new'
  get 'ticket_audits/create'
  get 'ticket_audits/update'
  get 'ticket_audits/destroy'
  devise_for :users
  root 'static_pages#home'
  get '/faqs', to: 'static_pages#faqs'
  get '/ticket-appeal-form', to: 'static_pages#ticket_appeal_form'
  post '/ticket-appeal-form', to: 'static_pages#submit_ticket_appeal_form'
  resources :ticket_audits
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
