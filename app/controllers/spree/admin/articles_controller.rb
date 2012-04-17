class Spree::Admin::ArticlesController < Spree::Admin::ResourceController

  def index
    @articles = Spree::Article.all
  end

  def new
    @article = Spree::Article.new
    initialize_lists
  end

  def edit
    @article = Spree::Article.find(params[:id])
    initialize_lists
  end

  def create
    @article = Spree::Article.new(params[:article])

    if @article.save
      redirect_to(admin_articles_url)
    else
      initialize_lists
      render :action => "new"
    end
  end

  def update
    @article = Spree::Article.find(params[:id])

    if @article.update_attributes(params[:article])
      redirect_to(admin_articles_url)
    else
      initialize_lists
      render :action => "new"
    end
  end

  def destroy
    @article = Spree::Article.find(params[:id])
    @article.destroy

    redirect_to(admin_articles_url)
  end


  private

  def initialize_lists
    @articles = Spree::Article.all
    @article_categories = Spree::ArticleCategory.all
    @languages = Language::ALL_LANGUAGES
    @products = Spree::Product.where(:is_printer => true)
  end
end
