class AppGemsController < ApplicationController
  before_action :set_app_gem, only: [:show, :edit, :update, :destroy]

  # GET /app_gems
  # GET /app_gems.json
  def index
    @app_gems = AppGem.all
  end

  # GET /app_gems/1
  # GET /app_gems/1.json
  def show
  end

  # GET /app_gems/new
  def new
    @app_gem = AppGem.new
  end

  # GET /app_gems/1/edit
  def edit
  end

  # POST /app_gems
  # POST /app_gems.json
  def create
    @app_gem = AppGem.new(app_gem_params)

    respond_to do |format|
      if @app_gem.save
        format.html { redirect_to @app_gem, notice: 'App gem was successfully created.' }
        format.json { render :show, status: :created, location: @app_gem }
      else
        format.html { render :new }
        format.json { render json: @app_gem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_gems/1
  # PATCH/PUT /app_gems/1.json
  def update
    respond_to do |format|
      if @app_gem.update(app_gem_params)
        format.html { redirect_to @app_gem, notice: 'App gem was successfully updated.' }
        format.json { render :show, status: :ok, location: @app_gem }
      else
        format.html { render :edit }
        format.json { render json: @app_gem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_gems/1
  # DELETE /app_gems/1.json
  def destroy
    @app_gem.destroy
    respond_to do |format|
      format.html { redirect_to app_gems_url, notice: 'App gem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_gem
      @app_gem = AppGem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_gem_params
      params.require(:app_gem).permit(:name, :version)
    end
end
