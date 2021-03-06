Rails.application.routes.draw do
  resources :grades
  resources :assignments
  resources :enrollments
  resources :courses do
    get 'students', to: 'courses#students', on: :member
    get 'assignments', to: 'courses#assignments', on: :member
    get 'grades', to: 'courses#grades', on: :member
  end
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
