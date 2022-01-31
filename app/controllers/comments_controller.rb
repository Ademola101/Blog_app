class CommentsController < ApplicationController

  def create
    @article = Article.find(params[:id])
    @comment = @article.comment.create(comment_params)
    redirect_to article_path(@article)
    
  end
end
