class ArticlesController < ApplicationController

  #this is my controller

  def show
    @article = Article.find(params[:id])
  end

end
