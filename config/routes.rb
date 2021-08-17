Rails.application.routes.draw do
  scope "(:name)", locale: /en|vi/ do
    # Ex:- scope :active, -> {where(:active => true)}
    root "static_pages#home"
    get "static_pages/home"
    get "static_pages/help"
    get "static_pages/about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
end
