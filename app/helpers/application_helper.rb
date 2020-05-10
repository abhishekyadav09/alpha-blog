module ApplicationHelper
  def gravatar_for(user, option = { size: 80 })
    email_address = user.email.downcase
    hash = Digest::MD5.hexdigest(email_address)
    size = option[:size]
    gravatar_url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"
    image_tag(gravatar_url, alt:user.username, class: "rounded shadow mx-auto d-block")
  end

  def current_user
    #the code below will ensure that we don't hit the database everytime we have to check whether the user
    #is logged in or not (||= ensure this). Putting  the line of code before IF statement is equivalent
    #to putting the statement after the IF statement
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    # !! converts the variable into a boolean
    !!current_user
  end
end
