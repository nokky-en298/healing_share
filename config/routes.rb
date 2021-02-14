Rails.application.routes.draw do
  get 'healings/index'
  root to: "healings#index"
end
