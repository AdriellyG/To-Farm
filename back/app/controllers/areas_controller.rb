class AreasController < ApplicationController
  before_action :set_area, only: [:show, :update, :destroy]

  # GET /areas
  def index
    @areas = Areadb.get_areas

    render json: @areas
  end

  def get_areas_total_usadas
    @area = Areadb.get_areas_total_usadas

    render json: @area
  end

  def get_areas_total_disponiveis
    @area = Areadb.get_areas_total_disponiveis

    render json: @area
  end
  
  def get_areas_total
    @area = Areadb.get_areas_total

    render json: @area
  end

  # GET /areas/1
  def show
    render json: @area
  end

  # POST /areas
  def create
    @area = Area.new(area_params)

    puts "##########################"
    puts "##########################"
    puts "#{area_params}"
    puts "##########################"
    puts "##########################"

    if @area.save
      render json: @area, status: :created, location: @area
    else
      render json: @area.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /areas/1
  def update
    if @area.update(area_params)
      render json: @area
    else
      render json: @area.errors, status: :unprocessable_entity
    end
  end

  # DELETE /areas/1
  def destroy
    @area.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_area
      @area = Area.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def area_params
      params.require(:area).permit(:nome, :fazenda_id, :tipo_solo_id, :local_fisico_id)
    end
end
