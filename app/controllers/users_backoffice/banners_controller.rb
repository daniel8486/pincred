class UsersBackoffice::BannersController < UsersBackofficeController
 
  before_action :set_banner, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @banners = Banner.all.page(params[:page]).per(5)
  end

  def show

  end

  def edit
  end

  def new
   @banner = Banner.new
  end

  def create
    @banner = Banner.new(params_banners)
    if @banner.save()
      redirect_to users_backoffice_banners_path, notice: "Banner Criado com Sucesso !"
      else
      render :new
     end
   
  end

  def destroy

    if @banner.destroy
      redirect_to users_backoffice_banners_path, notice: "Banner excluido com Sucesso !"
      else
      render :index
     end
     
  end


  def update

    if @banner.update(params_banners)
    redirect_to users_backoffice_banners_path, notice: "Banner Atualizado com Sucesso !"
    else
    render :edit
   end
 end

 private

 def set_banner
  @banner = Banner.find(params[:id])
 end

  def params_banners
    params.require(:banner).permit(:title,:content,:image,:position,:avatar)
  end

end
