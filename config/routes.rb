Rails.application.routes.draw do

  root 'main#index'
  get 'index' => 'main#index'
  get 'g_archive' => 'gestion_archive#g_archive'
  get 'g_courrier' => 'gestion_courrier#g_courrier'
  get 'g_depense' => 'gestion_depense#g_depense'
  get 'g_personnel' => 'gestion_personnel#g_personnel'
  get 'g_projet' => 'gestion_projet#g_projet'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
