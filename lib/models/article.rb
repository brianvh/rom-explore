class Article < ActiveRecord::Base
  has_many :comments

  scope :for_slug, ->(slug) { find_by(slug: slug) }
  scope :published, ->{ where.not(published_on: nil) }
  scope :not_published, ->{ where(published_on: nil) }

  validates_presence_of :slug, :title
end
