Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphqlPlayground::Rails::Engine, at: "/graphql-playground", graphql_path: "graphql#execute"
  end
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/signup", to: "users#signup"
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login" 
end
