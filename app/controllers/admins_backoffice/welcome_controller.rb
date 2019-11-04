class AdminsBackoffice::WelcomeController < AdminsBackofficeController
  before_action :authenticate_admin!
  def index
  end
end
