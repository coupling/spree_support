class CreateSpreeArticleProducts < ActiveRecord::Migration
  def change
    create_table :spree_article_products do |t|
      t.integer :article_id
      t.integer :product_id

      t.timestamps
    end
  end
end
