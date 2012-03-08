class Spree::DownloadsController < Spree::BaseController

  def index
    @download_categories = Spree::DownloadCategory.all
    @printers = Spree::Product.where(:is_printer => true)
  end
end