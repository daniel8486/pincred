class UsersBackoffice::MatchingsController < UsersBackofficeController
  before_action :set_matching, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user!
  
  # GET /matchings
  # GET /matchings.json
  def index
     @matchings = Matching.all
  end
    
  # GET /matchings/1
  # GET /matchings/1.json
  def show
  end
 
  # GET /matchings/new
  def new
     @matching = Matching.new   
  end
  
   # GET /matchings/1/edit
   def edit
   end
   
   # POST /matchings
   # POST /matchings.json
   def create
     @matching = Matching.new(matching_params)
     if @matching.save
       redirect_to users_backoffice_matchings_path, notice: "Correspodente Criado com Sucesso !"
     else
       render 'new'
     end
   end
   
    # PATCH/PUT /matchings/1
    # PATCH/PUT /matchings/1.json
   def update
      if @matching.update(matching_params)
          redirect_to users_backoffice_matchings_path, notice: "Correspodente Atualizado com Sucesso !"
        else
          render :edit
        end
    end
   
     # DELETE /matchings/1
     # DELETE /matchings/1.json
     def destroy
      if @matching.destroy
        redirect_to users_backoffice_matchings_path, notice: "Correspodente excluido com Sucesso !"
      else
        render :index
      end
    
    end 
   
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_matching
      @matching = Matching.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matching_params
      params.require(:matching).permit(:title,:description,:content)
    end

end
