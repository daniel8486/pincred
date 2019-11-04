class Page::DemosController < PagesController
    def index
    @demos = Demo.all
    @contents = Content.all
    end
end
