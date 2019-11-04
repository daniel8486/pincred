class Page::PlubsController < PageController
  def index
    @publications = Publication.all
    @contents = Content.all
  end
end
