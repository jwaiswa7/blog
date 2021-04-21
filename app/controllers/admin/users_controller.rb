# frozen_string_literal: true

module Admin
  class UsersController < AdminController
    before_action { authorize %i[admin user] }
    def index
      @users = User.all
    end
  end
end
