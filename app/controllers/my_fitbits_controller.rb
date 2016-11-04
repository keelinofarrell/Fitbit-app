class MyFitbitsController < ApplicationController
  before_action :set_my_fitbit, only: [:show, :edit, :update, :destroy]

  # GET /my_fitbits
  # GET /my_fitbits.json
  def index
    @my_fitbits = MyFitbit.all
  end

  # GET /my_fitbits/1
  # GET /my_fitbits/1.json
  def show
  end

  # GET /my_fitbits/new
  def new
    @my_fitbit = MyFitbit.new
  end

  # GET /my_fitbits/1/edit
  def edit
  end

  # POST /my_fitbits
  # POST /my_fitbits.json
  def create
    @my_fitbit = MyFitbit.new(my_fitbit_params)

    respond_to do |format|
      if @my_fitbit.save
        format.html { redirect_to @my_fitbit, notice: 'My fitbit was successfully created.' }
        format.json { render :show, status: :created, location: @my_fitbit }
      else
        format.html { render :new }
        format.json { render json: @my_fitbit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_fitbits/1
  # PATCH/PUT /my_fitbits/1.json
  def update
    respond_to do |format|
      if @my_fitbit.update(my_fitbit_params)
        format.html { redirect_to @my_fitbit, notice: 'My fitbit was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_fitbit }
      else
        format.html { render :edit }
        format.json { render json: @my_fitbit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_fitbits/1
  # DELETE /my_fitbits/1.json
  def destroy
    @my_fitbit.destroy
    respond_to do |format|
      format.html { redirect_to my_fitbits_url, notice: 'My fitbit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_fitbit
      @my_fitbit = MyFitbit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_fitbit_params
      params.require(:my_fitbit).permit(:fitbit_id, :member_id, :steps)
    end
end
