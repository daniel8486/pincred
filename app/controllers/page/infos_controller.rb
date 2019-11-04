class Page::InfosController < PageController
  def index
    @infos = Info.all
    @contents = Content.all
  end
end
