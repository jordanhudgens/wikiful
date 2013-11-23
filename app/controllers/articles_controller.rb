# after this controller has been created you need to edit the
# routes doc so it will work properly.

class ArticlesController < ApplicationController
  
  # this index method queries the psql db table
  def index
    @articles = Article.order(updated_at: :desc).limit(25)
  end

  def show
  end

  def new
  end

  def create
  end

end

