class UsersBackoffice::ContentsController < UsersBackofficeController
    before_action :set_content, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!
  
    # GET /abouts
    # GET /abouts.json
    def index
      @contents = Content.all
    end
  
    # GET /abouts/1
    # GET /abouts/1.json
    def show
    end
  
    # GET /abouts/new
    def new
      @content = Content.new
    end
  
    # GET /abouts/1/edit
    def edit
    end
  
    # POST /abouts
    # POST /abouts.json
    def create
      @content = Content.new(content_params)
        if @content.save
          redirect_to users_backoffice_contents_index_path, notice: "Conteudo Criado com Sucesso !"
        else
          render :new
        end
    end
  
    # PATCH/PUT /abouts/1
    # PATCH/PUT /abouts/1.json
    def update
        if @content.update(content_params)
            redirect_to users_backoffice_contents_index_path, notice: "Conteudo Criado com Sucesso !"
          else
            render :edit
          end
    end
  
    # DELETE /abouts/1
    # DELETE /abouts/1.json
    def destroy
      if @content.destroy
        redirect_to users_backoffice_contents_path, notice: "Conteudo excluido com Sucesso !"
      else
        render :index
      end
    
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_content
        @content = Content.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def content_params
        params.require(:content).permit(:title, :address, :phone, :email, :phone_two) 
      end
 

end
