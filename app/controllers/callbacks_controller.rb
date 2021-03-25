class CallbacksController < Devise:OmniAuthCallbacksController
    devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
    def github
        @user = User.from_omniauth(request.env["omniauth.auth"])
        sign_in_and_redirect @user
    end
end