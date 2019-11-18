class UsersBackoffice::TaxsController < UsersBackofficeController
  before_action :set_tax, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user!
    # GET /posts
    # GET /posts.json
    def index
      @taxs = Tax.all
    end
  
    # GET /posts/1
    # GET /posts/1.json
    def show
    end
  
    # GET /posts/new
    def new
      @tax = Tax.new
    end
  
    # GET /abouts/1/edit
    def edit
    end
  
    # POST /abouts
    # POST /abouts.json
    def create
      @tax = Tax.new
        if @tax.save
          redirect_to users_backoffice_taxs_index_path, notice: "Posts Criado com Sucesso !"
        else
          render :new
        end
    end
  
    # PATCH/PUT /abouts/1
    # PATCH/PUT /abouts/1.json
    def update
        if @tax.update(tax_params)
            redirect_to users_backoffice_taxs_index_path, notice: "Posts Criado com Sucesso !"
          else
            render :edit
          end
    end
  
    # DELETE /abouts/1
    # DELETE /abouts/1.json
    def destroy
      if @tax.destroy
        redirect_to users_backoffice_taxs_path, notice: "Posts excluido com Sucesso !"
      else
        render :index
      end
    
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_tax
        @tax = Tax.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def tax_params
        params.require(:tax).permit(:title, :content, :status)
      end
end
