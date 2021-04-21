class Admin::ArticlePolicy < ApplicationPolicy
    def index?
      admin_user?
    end
    

    def edit?
      admin_user?
    end

    def update?
      admin_user?
    end

    def destroy?
      admin_user?
    end
  
  end
  