module UsersHelper
  def user_avatar(user)
    if user.avatar.attached?
      user.avatar_url
    else
      asset_path 'default-user.png'
    end
  end
end
