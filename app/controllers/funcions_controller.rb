class FuncionsController < ApplicationController
  before_action :set_funcion, only: %i[ show edit update destroy ]

  # GET /funcions or /funcions.json
  def index
    @funcions = Funcion.all
  end

  # GET /funcions/1 or /funcions/1.json
  def show
  end

  # GET /funcions/new
  def new
    @funcion = Funcion.new
  end

  # GET /funcions/1/edit
  def edit
  end

  # POST /funcions or /funcions.json
  def create
    @funcion = Funcion.new(funcion_params)

    respond_to do |format|
      if @funcion.save
        format.html { redirect_to funcion_url(@funcion), notice: "Funcion was successfully created." }
        format.json { render :show, status: :created, location: @funcion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @funcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /funcions/1 or /funcions/1.json
  def update
    respond_to do |format|
      if @funcion.update(funcion_params)
        format.html { redirect_to funcion_url(@funcion), notice: "Funcion was successfully updated." }
        format.json { render :show, status: :ok, location: @funcion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @funcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funcions/1 or /funcions/1.json
  def destroy
    @funcion.destroy

    respond_to do |format|
      format.html { redirect_to funcions_url, notice: "Funcion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funcion
      @funcion = Funcion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def funcion_params
      params.require(:funcion).permit(:pelicula_id, :sala_id, :fecha, :precio)
    end
end
