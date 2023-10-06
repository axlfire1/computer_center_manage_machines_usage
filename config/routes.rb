CentroComputo::Application.routes.draw do
    
  resources :computadoras
  resources :usuarios
  resources :consulta_uso
  match 'muestra_usos' => "consulta_uso#muestra_usos", :as => 'muestra_usos'
  match 'show_available' => "usos#show_available", :as => 'show_available'
  match 'select_users/:id' => "usos#select_users", :as => 'select_users'
  match 'save_uso' => 'usos#save_uso', :as => 'save_uso'
  match 'insert_user' => 'usos#insert_users', :as => 'insert_users'
  match 'release_machine' => 'usos#release_machine', :as => 'release_machine'
  
   root :to => 'usos#show_available'


end
