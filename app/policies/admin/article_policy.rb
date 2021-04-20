class Admin::ArticlePolicy < ApplicationPolicy
    def index?
      admin_user?
    end
  
  end
  