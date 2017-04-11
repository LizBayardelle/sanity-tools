class ProconsController < ApplicationController
  before_action :set_procon, only: [:show, :edit, :update, :destroy]

  # GET /procons
  def index
    @procons = Procon.all
  end

  # GET /procons/1
  def show
  end

  # GET /procons/new
  def new
    @procon = Procon.new
  end

  # GET /procons/1/edit
  def edit
  end

  # POST /procons
  def create
    @procon = Procon.new(procon_params)
    @procon.user_id = current_user.id

    if @procon.save
      redirect_to @procon, notice: 'Procon was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /procons/1
  def update
    if @procon.update(procon_params)
      redirect_to @procon, notice: 'Procon was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /procons/1
  def destroy
    @procon.destroy
    redirect_to procons_url, notice: 'Procon was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_procon
      @procon = Procon.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def procon_params
      params.require(:procon).permit(:name, :notes, :proarray, :conarray, :user_id)
    end
end
