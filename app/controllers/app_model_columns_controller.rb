class AppModelColumnsController < ApplicationController
  before_action :set_app_model_column, only: [:show, :edit, :update, :destroy]

  # GET /app_model_columns
  # GET /app_model_columns.json
  def index
    @app_model_columns = AppModelColumn.all
  end

  # GET /app_model_columns/1
  # GET /app_model_columns/1.json
  def show
  end

  # GET /app_model_columns/new
  def new
    @app_model_column = AppModelColumn.new
  end

  # GET /app_model_columns/1/edit
  def edit
  end

  # POST /app_model_columns
  # POST /app_model_columns.json
  def create
    @app_model_column = AppModelColumn.new(app_model_column_params)

    respond_to do |format|
      if @app_model_column.save
        format.html { redirect_to @app_model_column, notice: 'App model column was successfully created.' }
        format.json { render :show, status: :created, location: @app_model_column }
      else
        format.html { render :new }
        format.json { render json: @app_model_column.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_model_columns/1
  # PATCH/PUT /app_model_columns/1.json
  def update
    respond_to do |format|
      if @app_model_column.update(app_model_column_params)
        format.html { redirect_to @app_model_column, notice: 'App model column was successfully updated.' }
        format.json { render :show, status: :ok, location: @app_model_column }
      else
        format.html { render :edit }
        format.json { render json: @app_model_column.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_model_columns/1
  # DELETE /app_model_columns/1.json
  def destroy
    @app_model_column.destroy
    respond_to do |format|
      format.html { redirect_to app_model_columns_url, notice: 'App model column was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_model_column
      @app_model_column = AppModelColumn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_model_column_params
      params.require(:app_model_column).permit(:app_model_id, :name, :type, :allow_nil, :unique, :index)
    end
end
