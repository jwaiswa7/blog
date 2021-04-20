require 'rails_helper'

RSpec.describe Article, type: :model do 
  let(:article) { FactoryBot.create :article }

  it "is a valid article" do
    expect(article).to be_valid 
  end

  it "is not valid without a title" do 
    article.title = nil
    expect(article).not_to be_valid
  end

  it "is not valid without a subtitle" do
    article.sub_title = nil
    expect(article).not_to be_valid 
  end

  it "is not valid without details" do 
    article.details = nil
    expect(article).not_to be_valid
  end

  it "is not valid without a user" do 
    article.user = nil
    expect(article).not_to be_valid
  end
end
