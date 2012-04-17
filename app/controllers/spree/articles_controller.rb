class Spree::ArticlesController < Spree::BaseController

  def index
    @article_categories = Spree::ArticleCategory.all
    @printers = Spree::Product.where(:is_printer => true)
  end
end