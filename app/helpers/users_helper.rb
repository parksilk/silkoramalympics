module UsersHelper

  def gravatar_for(user, size = 50)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    image_tag("http://gravatar.com/avatar/#{gravatar_id}?s=#{size}&d=mm")
  end

end
