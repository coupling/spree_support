Spree::Product.class_eval do
  has_many :download_products
  has_many :downloads, :through => :download_products
end