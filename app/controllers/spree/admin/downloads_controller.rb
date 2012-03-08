class Spree::Admin::DownloadsController < Spree::Admin::ResourceController

  def index
    @downloads = Spree::Download.all
  end

  def new
    @download = Spree::Download.new
    initialize_lists
  end

  def edit
    @download = Spree::Download.find(params[:id])
    initialize_lists
  end

  def create
    @download = Spree::Download.new(params[:download])

    if @download.save
      redirect_to(admin_downloads_url)
    else
      initialize_lists
      render :action => "new"
    end
  end

  def update
    @download = Spree::Download.find(params[:id])

    if @download.update_attributes(params[:download])
      redirect_to(admin_downloads_url)
    else
      initialize_lists
      render :action => "new"
    end
  end

  def destroy
    @download = Spree::Download.find(params[:id])
    @download.destroy

    redirect_to(admin_downloads_url)
  end


  private

  def initialize_lists
    @downloads = Spree::Download.all
    @download_categories = Spree::DownloadCategory.all
    @languages = Language::ALL_LANGUAGES
    @products = Spree::Product.where(:is_printer => true)
  end
end
