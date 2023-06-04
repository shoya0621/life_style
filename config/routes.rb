Rails.application.routes.draw do

  devise_for :admins, controllers: {
  sessions: 'admin/sessions'
}
  devise_for :users, controllers: {
  registrations: "user/registrations",
  sessions: 'user/sessions'
}
end
