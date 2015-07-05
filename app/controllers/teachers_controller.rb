class TeachersController < ApplicationController
  def update
    current_user.update(allowed_params)
  end

  private

    def allowed_params
      params.permit(:first_name, :last_name, :photo, :home_town, :education, :hobbies, :motto, :strengths, :arrived_in_country, :other_languages_spoken, :peronal_message)
    end
end
