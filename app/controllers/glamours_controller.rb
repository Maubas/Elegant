class GlamoursController < ApplicationController
  before_action :set_glamour, only: [:show, :edit, :update, :destroy]
  before_filter :authorize

  # GET /glamours
  # GET /glamours.json
  def index
    @glamours = Glamour.all
  end

  # GET /glamours/1
  # GET /glamours/1.json
  def show
  end

  # GET /glamours/new
  def new
    @glamour = Glamour.new
  end

  # GET /glamours/1/edit
  def edit
  end

  # POST /glamours
  # POST /glamours.json
  def create
    @glamour = Glamour.new(glamour_params)

    respond_to do |format|
      if @glamour.save
        format.html { redirect_to @glamour, notice: 'Glamour was successfully created.' }
        format.json { render :show, status: :created, location: @glamour }
      else
        format.html { render :new }
        format.json { render json: @glamour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /glamours/1
  # PATCH/PUT /glamours/1.json
  def update
    respond_to do |format|
      if @glamour.update(glamour_params)
        format.html { redirect_to @glamour, notice: 'Glamour was successfully updated.' }
        format.json { render :show, status: :ok, location: @glamour }
      else
        format.html { render :edit }
        format.json { render json: @glamour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /glamours/1
  # DELETE /glamours/1.json
  def destroy
    @glamour.destroy
    respond_to do |format|
      format.html { redirect_to glamours_url, notice: 'Glamour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_glamour
      @glamour = Glamour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def glamour_params
      params.require(:glamour).permit(:user_id, :name, :world, :class, :head, :chest, :arms, :legs, :feet, :comment)
    end
end
