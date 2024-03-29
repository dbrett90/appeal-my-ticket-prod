Rails.application.routes.draw do
  get 'ticket_complaints/index'
  get 'ticket_complaints/new'
  get 'ticket_complaints/edit'
  get 'ticket_complaints/create'
  get 'ticket_complaints/update'
  get 'ticket_complaints/destroy'
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
  get '/contact', to: 'static_pages#contact'
  post '/contact', to: 'static_pages#contact_form'
  resources :ticket_audits
  resources :ticket_complaints
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
