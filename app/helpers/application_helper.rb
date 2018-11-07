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

  def logged_is?(name)
    logged.class.name.downcase == name.to_s
  end
end
