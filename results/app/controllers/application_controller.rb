# Edited by Zach Pifer on 4/21 Allowed logins with username or email

class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    # Override default permitted parameters
    def configure_permitted_parameters
        added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
        devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
        devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end
end
