module ApplicationHelper
  def signed_in?
    if (teacher_signed_in? or student_signed_in?)
      return true
    else
      return false
    end
  end
end
