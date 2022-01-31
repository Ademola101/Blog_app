class ArticlesController < ApplicationController
  
  before_action :authenticate_user!, except: [ :index, :show]
  
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
    @article = current_user.articles.new(article_params)
    if @article.save
      redirect_to @article
    else render :new, status: :unprocessable_entity
    end
  end

  def about
  end
  private

  def article_params
    params.require(:article).permit('title', 'body')
  end


end
