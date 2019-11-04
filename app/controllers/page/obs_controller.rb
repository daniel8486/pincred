class Page::ObsController < PageController
  def index
    @matchings = Matching.all
    @contents = Content.all
  end
end
