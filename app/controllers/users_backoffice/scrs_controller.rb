class UsersBackoffice::ScrsController < UsersBackofficeController
    before_action :set_scr, only: [:show, :edit, :update, :destroy]
    #before_action :authenticate_user!
    
    # GET /matchings
    # GET /matchings.json
    def index
       @scrs = Scr.all
    end
      
    # GET /matchings/1
    # GET /matchings/1.json
    def show
    end
   
    # GET /matchings/new
    def new
       @scr = Scr.new   
    end
    
     # GET /matchings/1/edit
     def edit
     end
     
     # POST /matchings
     # POST /matchings.json
     def create
       @scr = Scr.new(scr_params)
       if @scr.save
         redirect_to users_backoffice_scrs_path, notice: "Cadastrado com Sucesso !"
       else
         render 'new'
       end
     end
     
      # PATCH/PUT /matchings/1
      # PATCH/PUT /matchings/1.json
     def update
        if @scr.update(scr_params)
            redirect_to users_backoffice_scrs_path, notice: "Cadrastro Atualizado com Sucesso !"
          else
            render :edit
          end
      end
     
       # DELETE /matchings/1
       # DELETE /matchings/1.json
       def destroy
        if @scr.destroy
          redirect_to users_backoffice_scrs_path, notice: "Cadastro excluido com Sucesso !"
        else
          render :index
        end
      
      end 
     
      private
      # Use callbacks to share common setup or constraints between actions.
      def set_scr
        @scr = Scr.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def scr_params
        params.require(:scr).permit(:title,:description)
      end
  
  end