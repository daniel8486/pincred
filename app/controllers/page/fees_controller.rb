class Page::FeesController < PagesController
    def index
        @fees = Fee.all
        @contents = Content.all
    end
end
