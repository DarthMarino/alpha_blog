module ApplicationHelper
  include Pagy::Frontend
  def flash_class(level)
    case level
        when 'success'then "notification is-success"
        when 'deleted' then "notification is-danger"
        when 'gucci' then "notification is-info"
    end
  end
  def gravatar_for(user,options = {size:80})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size=options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: "img-circle")
  end
end