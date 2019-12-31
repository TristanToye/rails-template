Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  # Feature switching with basic auth
  # https://github.com/jnunemaker/flipper/blob/master/docs/ui/README.md#basic-authentication-via-rack
  flipper_app = Flipper::UI.app(Flipper.instance) do |builder|
    builder.use Rack::Auth::Basic do |username, password|
      username == Rails.application.credentials.flipper[:user_name] &&
        password == Rails.application.credentials.flipper[:password]
    end
  end
  mount flipper_app, at: '/flipper'
end
