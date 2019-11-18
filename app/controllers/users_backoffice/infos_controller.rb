class UsersBackoffice::InfosController < UsersBackofficeController
  before_action :set_info, only: [:edit,:update,:destroy,:show]
  before_action :authenticate_user!

  def index
    @infos = Info.all #.page(params[:page]).per(5)
  end

  def show

  end

  def edit
   
  end

  def new
   @info = Info.new
  end

  def create
    @info = Info.new(params_info)
    if @info.save()
      redirect_to users_backoffice_infos_path, notice: "Informação Criada com Sucesso !"
      else
      render :new
     end
   
  end

  def destroy

    if @info.destroy
      redirect_to users_backoffice_infos_path, notice: "Informação excluido com Sucesso !"
      else
      render :index
     end
     
  end


  def update

    if @info.update(params_info)
    redirect_to users_backoffice_infos_path, notice: "Informação Atualizado com Sucesso !"
    else
    render :edit
   end
 end

 private

 def set_info
  @info = Info.find(params[:id])
 end


 def params_info
   params.require(:info).permit(:title, :content)
 end
end
