class ArticlesController < ApplicationController
  def articles
    @articles = articles.all
  end
end
