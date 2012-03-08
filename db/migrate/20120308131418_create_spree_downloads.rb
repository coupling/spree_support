class CreateSpreeDownloads < ActiveRecord::Migration
  def change
    create_table :spree_downloads do |t|
      t.string :name, :null => false
      t.integer :download_category_id, :null => false
      t.integer :language_id
      t.string :url

      t.timestamps
    end
  end
end
