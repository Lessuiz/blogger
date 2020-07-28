class ArticlesController < ApplicationController
  include ArticlesHelper

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
    @article.save

    flash.notice = "O artigo #{@article.title} foi criado"

    redirect_to @article
  end
  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    flash.notice = "O artigo #{@article.title} foi deletado"

    redirect_to "/articles/"
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)

    flash.notice = "O artigo #{@article.title} foi atualizado"

    redirect_to @article
  end
end
