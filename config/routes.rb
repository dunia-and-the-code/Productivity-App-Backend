Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resouces :users
  resouces :tasks
  resouces :journal_posts
  resouces :excuses
end
