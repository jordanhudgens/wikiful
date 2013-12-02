class WelcomeController < ApplicationController
  def index
      @recent_articles = Article.order(updated_at: :desc).limit(5)
      @categories = Category.order(title: :desc)
  end

  #def show
     # @category = Category.find(params[:id])
     # @article = Article.find(params[:id])
#end

end
