class ArticlePolicy < ApplicationPolicy

    def create?
        user
    end

    def new?
        user 
    end

    def edit?
        record.user == user
    end

    def update?
        record.user == user
    end

    def destroy?
        record.user ==  user
    end

    def mine?
        record.user == user
    end

end