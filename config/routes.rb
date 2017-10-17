Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  resources :users do
    collection { post :import }

  end
    post 'usercreate', to: 'users#create_teacher'
    post 'create_class', to: 'users#create_class'
    post 'create_teacher', to: 'teachers#create_teacher'
    get 'approve_student', to: 'users#approve_student'
    get 'show_my_class', to: 'users#show_my_class'
end
