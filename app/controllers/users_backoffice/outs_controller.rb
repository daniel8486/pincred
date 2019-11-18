class UsersBackoffice::OutsController < UsersBackofficeController
  before_action :set_out, only: [:edit,:update,:destroy,:show]
  #before_action :authenticate_user!
   def index
     @outs = Out.all #.page(params[:page]).per(5)
   end
 
   def show
 
   end
 
   def edit
    
   end
 
   def new
    @out = Out.new
   end
 
   def create
     @out = Out.new(params_out)
     if @out.save()
       redirect_to users_backoffice_outs_path, notice: "Usuário Criado com Sucesso !"
       else
       render :new
      end
    
   end
 
   def destroy
 
     if @out.destroy(params_out)
       redirect_to users_backoffice_outs_path, notice: "Usuário excluido com Sucesso !"
       else
       render :index
      end
      
   end
 
 
   def update
 
     if @out.update(params_out)
     redirect_to users_backoffice_outs_path, notice: "Usuário Atualizado com Sucesso !"
     else
     render :edit
    end
  end
 
  private
 
  def set_out
   @out = Out.find(params[:id])
  end
 
 
  def params_out
    params.require(:out).permit(:title,:content,:status)
  end
 
end
