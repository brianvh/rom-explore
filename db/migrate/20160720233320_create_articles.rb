class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :slug
      t.text :body
      t.datetime :published_on, index: true
      t.timestamps null: false
    end
  end
end
