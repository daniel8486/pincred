class Page::MoneysController < PageController
  def index
    @tickets = Ticket.all
    @contents = Content.all
    @calls = Call.all
  end
end
