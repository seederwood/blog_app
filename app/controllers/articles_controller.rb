class ArticlesController < ApplicationController
  before_action :find_article, only: %i[show edit destroy update]
  before_action :authenticate_user!, except: %i[index show]
  def index
    @articles = Article.all.order('created_at desc').paginate(page: params[:page], per_page: 10)
  end

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
    params.require(:article).permit(:title, :content, :slug)
  end

  def find_article
    @article = Article.friendly.find(params[:id])
  end
end
