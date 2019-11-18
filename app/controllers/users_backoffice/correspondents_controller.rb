class UsersBackoffice::CorrespondentsController < UsersBackofficeController
  before_action :set_correspondent, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user!
   
     # GET /abouts
     # GET /abouts.json
     def index
       @correspondents = Correspondent.all
     end
   
     # GET /abouts/1
     # GET /abouts/1.json
     def show
     end
   
     # GET /abouts/new
     def new
       @correspondent = Correspondent.new
     end
   
     # GET /abouts/1/edit
     def edit
     end
   
     # POST /abouts
     # POST /abouts.json
     def create
       @correspondent = Correspondent.new(correspondent_params)
         if @correspondent.save
           redirect_to users_backoffice_correspondents_path, notice: "Correspodente Criado com Sucesso !"
         else
           render :new
         end
     end
   
     # PATCH/PUT /abouts/1
     # PATCH/PUT /abouts/1.json
     def update
         if @correspondent.update(correspondent_params)
             redirect_to users_backoffice_correspondents_path, notice: "Correspodente Atualizado com Sucesso !"
           else
             render :edit
           end
     end
   
     # DELETE /abouts/1
     # DELETE /abouts/1.json
     def destroy
       if @correspondent.destroy
         redirect_to users_backoffice_correspondents_path, notice: "TCorrespodente excluido com Sucesso !"
       else
         render :index
       end
     
     end
   
     private
       # Use callbacks to share common setup or constraints between actions.
       def set_risk
         @correspondent = Correspondent.find(params[:id])
       end
   
       # Never trust parameters from the scary internet, only allow the white list through.
       def correspondent_params
         params.require(:correspondent).permit(:name, :description )
   
       end
end
