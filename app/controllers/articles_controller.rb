class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
    @article = set_article
  end

  def edit
    @article = set_article
  end

  def update
    @article = set_article
    @article.update((article_params))

    redirect_to article_path(@article)
  end

  def destroy
    @article = set_article
    @article.destroy

    redirect_to articles_path
  end


  private

  def article_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_article
    Article.find(params[:id])
  end
end
