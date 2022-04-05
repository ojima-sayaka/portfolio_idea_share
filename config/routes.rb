Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# ゲスト・会員　Top
  root "public/homes#top"
  get 'about', to: "public/homes#about"






#　管理者 Top
  root "admin/homes#top"
  

end
