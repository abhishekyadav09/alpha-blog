class PagesController < ApplicationController

  def home
    #This is the home controller
    redirect_to articles_path if logged_in?
  end

  def about
    #This is the about controller
  end
end
