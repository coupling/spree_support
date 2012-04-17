class Spree::Article < ActiveRecord::Base
  belongs_to :article_category
  has_one :language
  has_many :article_products
  has_many :products, :through => :article_products

  validates_presence_of :name, :content, :article_category_id
  validates_numericality_of :article_category_id

  # Bepaalt of deze article relevant is voor het meegegeven product.
  def is_relevant_for_product?(product)
    self.products.include?(product)
  end
end
