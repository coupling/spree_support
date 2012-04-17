# Controller voor het toevoegen van articlecategorieen. Deze controller maakt geen gebruik van Ajax functionaliteiten,
# omdat Javascript geen toegang heeft tot lokale bestanden en het daarom onmogelijk is om via een remote form bestanden
# te uploaden.
class Spree::Admin::ArticleCategoriesController < Spree::Admin::ResourceController

  def index
    @article_categories = Spree::ArticleCategory.all
  end

  def new
    @article_category = Spree::ArticleCategory.new
  end

  def edit
    @article_category = Spree::ArticleCategory.find(params[:id])
  end

  def create
    @article_category = Spree::ArticleCategory.new(params[:article_category])

    if @article_category.save
      flash.now[:notice] = t('admin.article_categories.form.created')
      redirect_to :action => :index
    else
      respond_with @article_category
    end
  end

  def update
    @article_category = Spree::ArticleCategory.find(params[:id])

    if @article_category.update_attributes(params[:article_category])
      flash.now[:notice] = t('admin.article_categories.form.updated')
      redirect_to :action => :index
    else
      # Toon het formulier.
      @render_form = true
      @article_categories = Spree::ArticleCategory.all

      render :action => :index
    end
  end

  def destroy
    @article_category = Spree::ArticleCategory.find(params[:id])
    @article_category.destroy
    @article_categories = Spree::ArticleCategory.all

    flash.now[:notice] = t('admin.article_categories.form.deleted')
  end
end
