Rails.application.routes.draw do

  devise_for :admins, controllers: {
  sessions: 'admin/sessions'
}
  devise_for :users, controllers: {
  registrations: "user/registrations",
  sessions: 'user/sessions'
}

  scope module: :user do
    root to: 'homes#top'

    resources :users, only: [:show, :edit] do
     resources :farorites, only: [:create, :destroy]
    end
   
    resources :schedules, only: [:create, :update, :destroy]
    resources :introdutions, only: [:create, :index, :update, :destroy]
   
    #コメント機能は追加で
    post 'users/sender_id/comments', to: 'comments#send'
    post 'users/reply_id/comments', to: 'comments#reply'
    resources :comments, only: [:index, :destroy]
  end
  
  namespace :admin do
    resources :users, only: [:index, :show]
  end
end
