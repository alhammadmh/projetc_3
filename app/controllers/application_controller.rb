class ApplicationController < ActionController::Base
    # before_action :authenticate_user!, :except  [:index]

    # def after_sign_in_path_for(resource)
    #     if resource.instructor?
    #         instructor_path(current_user.id)
    #     else
    #         student_path(current_user.id)
    #     end
    # end


    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
  
        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :user_type])
            devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :user_type])
            devise_parameter_sanitizer.permit(:account_update, keys: [:name, :user_type])
      end

      



end
