# frozen_string_literal: true

class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: :mine
  before_action :set_article, only: %i[show update edit destroy]

  def index
    @articles = Article.all
  end

  def mine
    @articles = current_user.articles
  end

  def new
    @article = current_user.articles.new
    authorize @article
  end

  def create
    @article = Article.new(article_params)
    authorize @article
    @article.user = current_user
    respond_to do |format|
      if @article.save
        format.html { redirect_to article_path(@article), notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    authorize @article
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to article_path(@article), notice: 'article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    authorize @article
  end

  def destroy
    authorize @article
    @article.destroy
    respond_to do |format|
      format.html { redirect_to my_articles_path, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def show; end

  private

  def article_params
    params.require(:article).permit(:title, :sub_title, :details)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
