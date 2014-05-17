class SampleModelsController < ApplicationController
  before_action :set_sample_model, only: [:show, :edit, :update, :destroy]

  # GET /sample_models
  # GET /sample_models.json
  def index
    @sample_models = SampleModel.all
  end

  # GET /sample_models/1
  # GET /sample_models/1.json
  def show
  end

  # GET /sample_models/new
  def new
    @sample_model = SampleModel.new
  end

  # GET /sample_models/1/edit
  def edit
  end

  # POST /sample_models
  # POST /sample_models.json
  def create
    @sample_model = SampleModel.new(sample_model_params)

    respond_to do |format|
      if @sample_model.save
        format.html { redirect_to @sample_model, notice: 'Sample model was successfully created.' }
        format.json { render :show, status: :created, location: @sample_model }
      else
        format.html { render :new }
        format.json { render json: @sample_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sample_models/1
  # PATCH/PUT /sample_models/1.json
  def update
    respond_to do |format|
      if @sample_model.update(sample_model_params)
        format.html { redirect_to @sample_model, notice: 'Sample model was successfully updated.' }
        format.json { render :show, status: :ok, location: @sample_model }
      else
        format.html { render :edit }
        format.json { render json: @sample_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sample_models/1
  # DELETE /sample_models/1.json
  def destroy
    @sample_model.destroy
    respond_to do |format|
      format.html { redirect_to sample_models_url, notice: 'Sample model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample_model
      @sample_model = SampleModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sample_model_params
      params.require(:sample_model).permit(:schedule)
    end
end
