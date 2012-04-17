class CreateSpreeArticles < ActiveRecord::Migration
  def change
    create_table :spree_articles do |t|
      t.string :name, :null => false
      t.integer :article_category_id, :null => false
      t.integer :language_id
      t.text :content

      t.timestamps
    end
  end
end
