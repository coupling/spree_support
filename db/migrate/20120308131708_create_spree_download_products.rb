class SpreeDownloadProducts < ActiveRecord::Migration
  def change
    create_table :spree_download_products do |t|
      t.integer :download_id
      t.integer :product_id

      t.timestamps
    end
  end
end
