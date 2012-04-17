class Spree::ArticleProduct < ActiveRecord::Base
  validates_presence_of :product_id, :article_id
  belongs_to :product
  belongs_to :article
end

