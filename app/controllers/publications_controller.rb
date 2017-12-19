class PublicationsController < ApplicationController
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
    @article = Article.new(article_params)
    if @article.save
      redirect_to new_publication_path(@article)
    else
      render :new
  end

  def edit
    @article = Article.find(params [:id])
  end

  def update
    @article = Article.find(params [:id])
    if @article.update(article_params)
      redirect_to edit_publication_path(@article)
    else
      redirect_to publication_edit_path(@article)
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.delete
    redirect_to publication_path
  end


  private
    def article_params
      params.require(:article).permit(:title, :university, :coAuthors)
    end

  end

end
