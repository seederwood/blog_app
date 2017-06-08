class ArticlesController < ApplicationController
  before_action :find_article, only: %i[show edit destroy update]
  def index; end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article, notice: "Article #{@article.title} was created successfully!"
    else
      render 'new', notice: 'Article Creation was unsuccessful, Ray.  Try again!'
    end
  end

  def show; end

  def edit; end

  def update
    if @article.update(article_params)
      redirect_to @article, notice: "Article #{@article.title} was updated successfully!"
    else
      render 'edit', notice: 'Something went wrong, Ray.  Please Try Again!'
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path, notice: "Article #{@article.title} was deleted successfully!"
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def find_article
    @article = Article.find(params[:id])
  end
end
