Rails.application.routes.draw do
  devise_for :users
  root "agendas#index"

    resources :agendas do
      resources :tasks, :notes
    end
end
