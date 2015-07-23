class RegistrationsController < Devise::RegistrationsController

  protected
    
    def update_resource(resource, params)
      resource.update_without_password(params)
    end

    def after_update_path_for(resource)
      teacher_path(resource)
    end

    def after_sign_up_path_for(resource)
      edit_teacher_registration_path # Or :prefix_to_your_route
    end
end
