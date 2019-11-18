class UsersBackoffice::InformationsController < UsersBackofficeController
  before_action :set_information, only: [:edit,:update,:destroy,:show]
  #before_action :authenticate_user!

  def index
    @informations = Information.all #.page(params[:page]).per(5)
  end

  def show

  end

  def edit
   
  end

  def new
   @information = Information.new
  end

  def create
    @information = Information.new(params_information)
    if @information.save()
      redirect_to users_backoffice_informations_path, notice: "Informação Criada com Sucesso !"
      else
      render :new
     end
   
  end

  def destroy

    if @information.destroy
      redirect_to users_backoffice_informations_path, notice: "Informação excluido com Sucesso !"
      else
      render :index
     end
     
  end


  def update

    if @information.update(params_information)
    redirect_to users_backoffice_informations_path, notice: "Informação Atualizado com Sucesso !"
    else
    render :edit
   end
 end

 private

 def set_information
  @information = Information.find(params[:id])
 end


 def params_information
   params.require(:information).permit(:title, :content)
 end

  
  
end
