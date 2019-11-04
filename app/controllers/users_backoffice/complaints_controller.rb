class UsersBackoffice::ComplaintsController < UsersBackofficeController
    before_action :set_complaint, only: [:show, :edit, :update, :destroy]

  # GET /contacts
  # GET /contacts.json
  def index
    @complaints = Complaint.all  
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
  end

  # GET /contacts/new
  def new
    @complaint = Complaint.new
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @complaint = Complaint.new(complaint_params)
      if @complaint.save
      redirect_to page_complaints_index_path, notice: 'Denúncia enviada com Sucesso. Aguarde que Retornaremos o mais rapido possivel ! ' 
      else
      render :index 
      end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    respond_to do |format|
      if @complaint.update(complaint_params)
        format.html { redirect_to users_backoffice_complaints_path, notice: 'Contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @complaint }
      else
        format.html { render :edit }
        format.json { render json: @complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    if @complaint.destroy
    redirect_to users_backoffice_complaints_path, notice: 'Contact was successfully destroyed.' 
    else
    render :index
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complaint
      @complaint = Complaint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def complaint_params
      params.require(:complaint).permit(:description_name, :rg, :cpf, :email, :phone, :address, :title, :content)
    end
end
