class UsersBackoffice::MoneysController < UsersBackofficeController
  before_action :set_money, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /matchings
  # GET /matchings.json
  def index
     @moneys = Money.all
  end
    
  # GET /matchings/1
  # GET /matchings/1.json
  def show
  end
 
  # GET /matchings/new
  def new
     @money = Money.new   
  end
  
   # GET /matchings/1/edit
   def edit
   end
   
   # POST /matchings
   # POST /matchings.json
   def create
     @money = Money.new(money_params)
     if @money.save
       redirect_to users_backoffice_moneys_path, notice: "Educação Financeira Cadastrado com Sucesso !"
     else
       render 'new'
     end
   end
   
    # PATCH/PUT /matchings/1
    # PATCH/PUT /matchings/1.json
   def update
      if @money.update(money_params)
          redirect_to users_backoffice_moneys_path, notice: "Educação Financeira  Atualizado com Sucesso !"
        else
          render :edit
        end
    end
   
     # DELETE /matchings/1
     # DELETE /matchings/1.json
     def destroy
      if @money.destroy
        redirect_to users_backoffice_moneys_path, notice: "Educação Financeira  excluido com Sucesso !"
      else
        render :index
      end
    
    end 
   
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_money
      @money = Money.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def money_params
      params.require(:money).permit(:title,:description)
    end

end