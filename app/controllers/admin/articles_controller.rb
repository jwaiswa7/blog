# frozen_string_literal: true

module Admin
  class ArticlesController < AdminController
    before_action { authorize %i[admin article] }
    def index
      @articles = Article.all
    end
  end
end
