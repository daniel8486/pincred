class Page::ProdsController < PageController
  def index
    @products = Product.all
    @contents = Content.all
  end
end
