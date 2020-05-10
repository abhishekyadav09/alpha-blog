class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in? #now current user is available to views as well
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
