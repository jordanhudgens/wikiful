# after this controller has been created you need to edit the
# routes doc so it will work properly.

class ArticlesController < ApplicationController
  
  # this index method queries the psql db table
  def index
    @articles = Article.order(updated_at: :desc).limit(25)
  end

  def show
    @article = Article.find(params[:id])
  end

  # new method creates a new article
  def new
    @article = Article.new
  end

  # has user validation properties, shows the article
  # if all of the validation requirements are met, if not it shows
  # the form page again
  def create
    @article = Article.new(article_params)
    if @article.save
        redirect_to @article
    else
        render "new"
    end
  end

# this is in place to establish the required
# parameters for the new function to work
private
    def article_params
        params.require(:article).permit(:title, :content, :category_ids => [])
    end

end

