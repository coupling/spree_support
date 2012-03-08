class CreateSpreeDownloadCategories < ActiveRecord::Migration
  def change
    create_table :spree_download_categories do |t|
      t.string :name, :null => false

      t.string :icon_file_name, :null => false
      t.string :icon_content_type, :null => false
      t.integer :icon_file_size, :null => false
      t.datetime :icon_updated_at, :null => false

      t.boolean :contains_applications, :null => :false, :default => false
      t.boolean :contains_movies, :null => :false, :default => false
      t.boolean :contains_brochures, :null => :false, :default => false

      t.timestamps
    end
  end
end
