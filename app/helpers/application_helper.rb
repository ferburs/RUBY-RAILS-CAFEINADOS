module ApplicationHelper
  def avatar_url(user)
    email_address = (user.email).downcase
    gravatar_id = Digest::MD5::hexdigest(email_address)
    "http://gravatar.com/avatar/#{gravatar_id}?s=400"
  end

  def avatar_barra(user)
    email_address = (user.email).downcase
    gravatar_id = Digest::MD5::hexdigest(email_address)
    "http://gravatar.com/avatar/#{gravatar_id}?s=50"
  end
end
