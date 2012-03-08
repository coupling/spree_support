class Spree::Download < ActiveRecord::Base
  belongs_to :download_category
  has_one :language
  has_many :download_products
  has_many :products, :through => :download_products

  validates_presence_of :name, :url, :download_category_id
  validates_numericality_of :download_category_id

  # Bepaalt of deze download relevant is voor het meegegeven product.
  def is_relevant_for_product?(product)
    self.products.include?(product)
  end
end
