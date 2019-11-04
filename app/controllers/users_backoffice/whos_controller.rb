class UsersBackoffice::WhosController < UsersBackofficeController
  before_action :set_who, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /whos
  # GET /whos.json
  def index
    @whos = Who.all
  end

  # GET /whos/1
  # GET /whos/1.json
  def show
  end

  # GET /whos/new
  def new
    @who = Who.new
  end

  # GET /whos/1/edit
  def edit
  end

  # POST /whos
  # POST /whos.json
  def create
    @who = Who.new(who_params)

    respond_to do |format|
      if @who.save
        format.html { redirect_to users_backoffice_whos_path, notice: 'Who was successfully created.' }
        format.json { render :show, status: :created, location: @who }
      else
        format.html { render :new }
        format.json { render json: @who.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whos/1
  # PATCH/PUT /whos/1.json
  def update
    respond_to do |format|
      if @who.update(who_params)
        format.html { redirect_to users_backoffice_whos_path , notice: 'Who was successfully updated.' }
        format.json { render :show, status: :ok, location: @who }
      else
        format.html { render :edit }
        format.json { render json: @who.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whos/1
  # DELETE /whos/1.json
  def destroy
    if @who.destroy(who_params)
      redirect_to users_backoffice_whos_path,  notice: 'Who was successfully destroyed.'
    else
      render :index
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_who
      @who = Who.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def who_params
      params.require(:who).permit(:title, :content, :status)
    end
end
