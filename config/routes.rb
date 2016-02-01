GgaApi::Application.routes.draw do
  get "days/index"
  get "bill_status/on_date"
  get "legislative_day/index"
  # get "prediction_results/index"
  # get "days_left/index"
  # get "votes/index"
  # get "votes/show"
  # get "votes/for_bill"
  # get "contributions_sectors/index"
  # get "/sessions" => "sessions#index"
  # get "/sessions/:id" => "sessions#show"
  namespace :api do
    get "/members" => "members#index"
    get "/members/:id" => "members#show"
    get "/members_by_house/:house" => "members#members_by_house"
    get "/members_by_party/:party" => "members#members_by_party"
    # get "/members_by_house/:house/district/:district" => "members#members_by_house_district"
    get "/members_by_district/:house/:district" => "members#members_by_house_district"
    get "/members/by_last_name/:lname" => "members#by_last_name"
    get "/members/by_county/:county" => "members#members_by_county"
    get "/members/:id/top_contributors" => "top_contributors#index"
    get "/members/:id/contributions_sectors" => "contributions_sectors#index"
    get "/members/:id/bills" => "members#member_bills"
    get "/members/:id/committees" => "members#member_committees"
    get "/members/:id/votes" => "members#member_votes"
    get "/bills" => "bills#index"
    get "/bills/house" => "bills#house"
    get "/bills/senate" => "bills#senate"
    get "/bills/passed_house" => "bills#passed_house"
    get "/bills/passed_senate" => "bills#passed_senate"
    get "/bills/sent_to_governor" => "bills#sent_to_governor"
    get "/bills/signed" => "bills#signed"
    get "/bills/vetoed" => "bills#vetoed"
    get "/bills/count(/:id)" => "bills#count"
    get "/bills/:id" => "bills#show"
    get "/bills/:id/author" => "bills#author"
    get "/bills/:id/coauthors" => "bills#coauthors"
    get "/bills/:id/votes" => "votes#for_bill"
    get "/bills/:type/:number" => "bills#by_type_number"
    get "/watched_bills" => "watched_bills#index"
    get "/watched_bills/:id" => "watched_bills#show"
    get "/watched_bills/for_category/:category" => "watched_bills#by_category"
    get "/votes" => "votes#index"
    get "/votes/:id" => "votes#show"
    get "/votes/for_bill/:bill_id" => "votes#for_bill_with_detail"
    get "/votes/on_date/:date" => "votes#on_date"
    get "/bill_attributes" => "bill_attributes#index"
    get "/days_left" => "days_left#index"
    get "/predictions" => "prediction_results#index"
    get "/districts" => "districts#index"
    get "/districts/:id" => "districts#show"
    get "/state" => "state#index"
    get "/legislativedays" => "legislative_day#index"
    get "/legislativedays/yesterday" => "legislative_day#yesterday"
    # get "/billevents/recent" => "bill_status#recent"
    get "/billevents/recent(/:date)" => "bill_status#recent"
    get "/billevents/:date" => "bill_status#on_date"
    get "/days" => "days#index"
    get "/days/yesterday" => "days#yesterday"
    get "/days/recent(/:date)" => "days#recent"

  end
  # resources :sessions, except: [:new, :edit, :delete]
  # resources :members, except: [:new, :edit, :delete]

  # resources :sessions do
  #   resources :members
  # end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
