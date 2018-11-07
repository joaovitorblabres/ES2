module ApplicationHelper
  def user_avatar(user)
    if user.class == User && user.avatar.attached?
      user.avatar_url
    else
      asset_path 'default-user.png'
    end
  end

  def logged
    current_user || current_company
  end
end
