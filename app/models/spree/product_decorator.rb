Spree::Product.class_eval do
  has_many :article_products
  has_many :articles, :through => :article_products
end