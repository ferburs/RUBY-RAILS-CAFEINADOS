class PeliculasController < ApplicationController
  before_action :set_pelicula, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /peliculas or /peliculas.json
  def index
    @peliculas = Pelicula.all
  end

  # GET /peliculas/1 or /peliculas/1.json
  def show
  end

  # GET /peliculas/new
  def new
    @pelicula = Pelicula.new
  end

  def buy
  end
  # GET /peliculas/1/edit
  def edit
  end

  # POST /peliculas or /peliculas.json
  def create
    @pelicula = Pelicula.new(pelicula_params)

    respond_to do |format|
      if @pelicula.save
        format.html { redirect_to pelicula_url(@pelicula), notice: "Pelicula was successfully created." }
        format.json { render :show, status: :created, location: @pelicula }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pelicula.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peliculas/1 or /peliculas/1.json
  def update
    respond_to do |format|
      if @pelicula.update(pelicula_params)
        format.html { redirect_to pelicula_url(@pelicula), notice: "Pelicula was successfully updated." }
        format.json { render :show, status: :ok, location: @pelicula }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pelicula.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peliculas/1 or /peliculas/1.json
  def destroy
    @pelicula.destroy

    respond_to do |format|
      format.html { redirect_to peliculas_url, notice: "Pelicula was successfully destroyed." }
      format.json { head :no_content }
    end
  end




  private


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pelicula
      @pelicula = Pelicula.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pelicula_params
      params.require(:pelicula).permit(:titulo, :descripcion, :director)
    end
end
