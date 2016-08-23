Rails.application.routes.draw do
  root to: "searches#new"
  resource :searches, only: [:new, :show]
end
