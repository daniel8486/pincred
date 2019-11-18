class UsersBackoffice::CreditsController < UsersBackofficeController
  before_action :set_credit, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
    # GET /posts
    # GET /posts.json
    def index
      @credits = Credit.all
    end
  
    # GET /posts/1
    # GET /posts/1.json
    def show
    end
  
    # GET /posts/new
    def new
      @credit = Credit.new
    end
  
    # GET /abouts/1/edit
    def edit
    end
  
    # POST /abouts
    # POST /abouts.json
    def create
      @credit = Credit.new(credit_params)
        if @credit.save
          redirect_to users_backoffice_credits_index_path, notice: "Posts Criado com Sucesso !"
        else
          render :new
        end
    end
  
    # PATCH/PUT /abouts/1
    # PATCH/PUT /abouts/1.json
    def update
        if @credit.update(credit_params)
            redirect_to users_backoffice_credits_index_path, notice: "Posts Criado com Sucesso !"
          else
            render :edit
          end
    end
  
    # DELETE /abouts/1
    # DELETE /abouts/1.json
    def destroy
      if @credit.destroy
        redirect_to users_backoffice_credits_path, notice: "Posts excluido com Sucesso !"
      else
        render :index
      end
    
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_credit
        @credit = Credit.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def credit_params
        params.require(:credit).permit(:title, :content, :status)
      end
end
