class Article < ApplicationRecord
  belongs_to :user

  validates :title, :sub_title, :details, :user, presence: true
end
