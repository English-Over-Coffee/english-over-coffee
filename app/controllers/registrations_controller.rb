class RegistrationsController < Devise::RegistrationsController

  protected
    
    def update_resource(resource, params)
      resource.update_without_password(params)
    end

    def after_update_path_for(resource)
      if teacher_signed_in?
        teacher_path(resource)
      elsif student_signed_in?
        student_path(resource)
      end
    end

    def after_sign_up_path_for(resource)
      if teacher_signed_in?
        edit_teacher_registration_path # Or :prefix_to_your_route
      elsif student_signed_in?
        edit_student_registration_path # Or :prefix_to_your_route
      end
    end


end
