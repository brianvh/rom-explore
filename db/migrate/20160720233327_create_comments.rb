class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :subject
      t.text :body
      t.integer :article_id, index: true
      t.timestamps null: false
    end
  end
end
