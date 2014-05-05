class WelcomeController < Spree::StoreController
    respond_to :html
  def index
    @searcher = Spree::Config.searcher_class.new(params)
    @searcher.current_user = try_spree_current_user
    @searcher.current_currency = current_currency
    @products = @searcher.retrieve_products.sample(3)
  end

  def about
  end

  def contact
  end
end
