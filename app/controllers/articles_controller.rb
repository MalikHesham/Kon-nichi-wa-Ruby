class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: %i[index show new create edit update destroy]
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params.merge(user_id: current_user.id))

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  def api_show
    @article = Article.find(params[:id])
    render json: @article
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
