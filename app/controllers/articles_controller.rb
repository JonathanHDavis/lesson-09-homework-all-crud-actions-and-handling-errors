class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new 
  end

  def create

    @article = Article.new(article_params)

    if @article.save
      flash[:notice] = "Article was successfully created"
      redirect_to article_path(@article)

    else
      flash.now[:error] = "An error prevented the article from being created"
      render :new
    end

  end

  def show
    @article = Article.find(params[:id]) #finds the specific character by id number
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      flash[:notice] = "Article was successfully updated"
      redirect_to article_path(@article)

    else
      flash.now[:error] = "An error prevented the article from being updated"
      render :edit
    end
    
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params     
    params.require(:article).permit(:title, :body) 
  end

end