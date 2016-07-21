class Comment < ActiveRecord::Base
  belongs_to :article

  scope :by_article, ->(article) { where(article: article) }
end
