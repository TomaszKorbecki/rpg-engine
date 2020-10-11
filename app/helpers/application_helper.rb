module ApplicationHelper
  def current_user_email(current_user)
    current_user&.email
  end

  def current_user_game_master?(current_user)
    current_user.game_master?
  end
end
