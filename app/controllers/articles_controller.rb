class ArticlesController < ApplicationController

  #this is my controller

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    #render plain: @article.inspect
    if @article.save
      flash[:notice] = "Article was created Successfully."
      redirect_to article_path(@article)
    else
      render 'new'
    end

  end

end
