module ApplicationHelper
  def current_user_email(current_user)
    current_user&.email
  end
end
