# Controller voor het toevoegen van downloadcategorieen. Deze controller maakt geen gebruik van Ajax functionaliteiten,
# omdat Javascript geen toegang heeft tot lokale bestanden en het daarom onmogelijk is om via een remote form bestanden
# te uploaden.
class Spree::Admin::DownloadCategoriesController < Spree::Admin::ResourceController

  def index
    @download_categories = Spree::DownloadCategory.all
  end

  def new
    @download_category = Spree::DownloadCategory.new
  end

  def edit
    @download_category = Spree::DownloadCategory.find(params[:id])
  end

  def create
    @download_category = Spree::DownloadCategory.new(params[:download_category])

    if @download_category.save
      flash.now[:notice] = t('admin.download_categories.form.created')
      redirect_to :action => :index
    else
      respond_with @download_category
    end
  end

  def update
    @download_category = Spree::DownloadCategory.find(params[:id])

    if @download_category.update_attributes(params[:download_category])
      flash.now[:notice] = t('admin.download_categories.form.updated')
      redirect_to :action => :index
    else
      # Toon het formulier.
      @render_form = true
      @download_categories = Spree::DownloadCategory.all

      render :action => :index
    end
  end

  def destroy
    @download_category = Spree::DownloadCategory.find(params[:id])
    @download_category.destroy
    @download_categories = Spree::DownloadCategory.all

    flash.now[:notice] = t('admin.download_categories.form.deleted')
  end
end
