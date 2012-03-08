class Spree::DownloadProduct < ActiveRecord::Base
  validates_presence_of :product_id, :download_id
  belongs_to :product
  belongs_to :download
end

