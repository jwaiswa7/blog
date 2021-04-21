class Admin::UserPolicy < ApplicationPolicy
    def index?
      admin_user?
    end
  
  end
  