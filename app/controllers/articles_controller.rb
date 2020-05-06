class ArticlesController < ApplicationController

  #this is my controller

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

end
