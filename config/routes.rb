Rails.application.routes.draw do
  root 'lab#input'
  get 'lab/input'
  get 'lab/show_xml'
  get 'lab/show_html'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
