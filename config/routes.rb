Rails.application.routes.draw do
 
  namespace :users_backoffice do
    get 'tickets/index'
    resources :tickets
  end
  namespace :page do
    get 'moneys/index'
  end
  namespace :users_backoffice do
    get 'moneys/index'
    resources :moneys
  end
  namespace :page do
    get 'scrs/index'
  end
  namespace :users_backoffice do
    get 'scrs/index'
    resources :scrs
  end
  namespace :page do
    get 'obs/index'
  end
  namespace :users_backoffice do
    get 'matchings/index'
    resources :matchings
  end
  namespace :page do
    get 'conts/new'
    get 'plubs/index'
    get 'whoamis/index'
    get 'prods/index'
    get 'welcome/index'
    get 'contacts/index'
    get 'contacts/new'
    get 'infos/index'
    get 'conts/index'
    get 'complaints/index'
    get 'complaints/new'
    get 'demos/index'
    get 'prsas/index'
    get 'fees/index'
    get 'risks/index'
  end
 
    
  mount Ckeditor::Engine => '/ckeditor'
  

  
  namespace :site do
    get 'welcome/index'
    get 'info/index'
  end

 
  namespace :users_backoffice do
    get 'welcome/index'
    resources :users
    get 'abouts/index'
    resources :abouts
    get 'products/index'
    resources :products
    get 'whos/index'
    resources :whos
    get 'publications/index'
    resources :publications
    get 'contacts/index'
    resources :contacts
    get 'banners/index'
    resources :banners
    get 'posts/index'
    resources :posts
    get 'imgs/index'
    resources :imgs
    get 'imagems/index'
    resources :imagems
    get 'credits/index'
    resources :credits
    get 'taxs/index'
    resources :taxs
    get 'outs/index'
    resources :outs
    get 'contents/index'
    resources :contents
    get 'informations/index'
    resources :informations
    resources :infos
    get 'complaints/index'
    resources :complaints
    get 'demos/index'
    resources :demos
    get 'prsas/index'
    resources :prsas
    get 'fees/index'
    resources :fees
    get 'risks/index'
    resources :risks
    get 'correspondent/index'
    resources :correspondents
  end
  
  namespace :admins_backoffice do
    get 'welcome/index' # DASHBOARD
    #get 'admins/index'
    #get 'admins/edit/:id', to: 'admins#edit'
    resources :admins
    # resource :admins, except: [:delete] - a que nao desejo ter   
  end
 
 
  #get 'welcome/index'
  devise_for :users
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  get 'inicio', to: 'site/welcome#index'

  #get 'financeira', to: 'page/welcome/index'

  root to: 'site/welcome#index'
  

end
